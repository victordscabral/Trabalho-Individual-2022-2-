FROM python:3.10 as build-dep
COPY requirements.txt .

WORKDIR /app

RUN mkdir /install
RUN pip3 install --upgrade pip \
    && pip3 install -r requirements.txt

COPY . .

CMD ["python3", "src/main.py"]