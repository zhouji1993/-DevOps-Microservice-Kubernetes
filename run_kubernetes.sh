#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
#dockerpath='zhouji1993/microservices:latest'
#windows
set dockerpath='zhouji1993/microservices:latest'


# Step 2
# Run the Docker Hub container with kubernetes
# by linux
# kubectl run microservice --image=$dockerpath--port=80
# by windows
kubectl run microservices1 --image='zhouji1993/microservices:latest' --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment.apps/microservices 8000:80 



kubectl logs `kubectl get pods -o=name`

