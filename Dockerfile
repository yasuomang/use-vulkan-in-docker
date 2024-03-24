FROM ubuntu:20.04

# 设置驱动支持，docker中可以使用GPU了。
ENV NVIDIA_DRIVER_CAPABILITIES=all
ENV NVIDIA_VISIBLE_DEVICES=all

RUN apt-get update && \
    apt-get -y install \
    vulkan-tools \
    mesa-utils