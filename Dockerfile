FROM alpine:latest
RUN apk add --no-cache python3-dev \
    && pip3 install --upgrade pip

WORKDIR /app
COPY . /app

RUN pip3 --no-cache-dir install -r requirements.txt
RUN echo "test"

EXPOSE 5000

ENTRYPOINT ["python3"]
CMD ["helloworld.py"]
