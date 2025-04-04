#!/bin/bash -eux

export AWS_PROFILE=howtv-sandbox-yhirose

aws ecr get-login-password --region ap-northeast-1 | docker login --username AWS --password-stdin 828515526579.dkr.ecr.ap-northeast-1.amazonaws.com
docker build -t test-repo .
docker tag test-repo:latest 828515526579.dkr.ecr.ap-northeast-1.amazonaws.com/test-repo:latest
docker push 828515526579.dkr.ecr.ap-northeast-1.amazonaws.com/test-repo:latest
