# Use the offical Python image as the base image
FROM python:3.9-slim-buster

#Set the working directory in the container
WORKDIR /app

#Copy the requirements file to the working directory
COPY requirements.txt .

#Install the required Python packages
RUN pip install --no-cache-dir -r requirements.txt

#Copy the application code to the working directory
COPY . .

#Set the environment variables for the Flask app
ENV FLASK_RUN_HOST=0.0.0.0

#Expose the environment variables for the Flask app
EXPOSE 5000

# Expose the port on which the Flask app will run
CMD ["flask", "run"]