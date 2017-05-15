#!/bin/bash

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
	CREATE USER yijubao WITH PASSWORD 'yijubao.net@KjfbUkh981';
	CREATE DATABASE yijubao_platform;
	GRANT ALL PRIVILEGES ON DATABASE yijubao_platform TO yijubao;
EOSQL