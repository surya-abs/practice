# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the application code
COPY . .

# Expose the port (default 3000)
EXPOSE 3000

# Define environment variable
ENV PORT=3000

# Run the application
CMD ["npm", "start"]