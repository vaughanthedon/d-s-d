# set base image (host os)
FROM python:3.9.5

# set the working directory in the container
WORKDIR /digital-systems

# copy the dependencies file to the working directory
COPY requirements.txt .

# install dependencies
RUN pip install -r requirements.txt

# copy the content of the local src directory to the working directory
COPY src/ .

# command to run on container start
CMD [ "python", "./server.py" ]