# FROM centos
FROM centos:latest

## genral labels for more information
LABEL Author="venkatesh"
LABEL maintainer="venkateshpensalwar@gmail.com"
LABEL version="1.0"

## install basic software needed for ssh image 
RUN yum install openssh-server openssh-clients -y

## load default hostkeys for configurations
RUN /usr/bin/ssh-keygen -A

## port to expose for ssh
EXPOSE 22

RUN rm -rf /run/nologin

RUN echo "root:root" | chpasswd

CMD  ["/usr/sbin/sshd","-D"]   










