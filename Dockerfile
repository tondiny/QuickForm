FROM python:3.11-slim

WORKDIR /

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

ENV PYTHONUNBUFFERED=1

EXPOSE 5001

CMD ["python", "app.py"]