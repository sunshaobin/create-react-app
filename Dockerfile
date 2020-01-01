FROM nginx:1.15.2
WORKDIR /usr/share/nginx/html
COPY ["./build", "./"]
RUN rm -f ./static/js/*.map
EXPOSE 80
ENV NODE_ENV production
