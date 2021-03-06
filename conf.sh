#! /bin/bash

export region=us-west-1
export prefix=Subway
export google_map_api_id="AIzaSyDiLV-ziuG1H70wn6BZ-AZ4rilk0KznzBI"
export write_throughput=1
export read_throughput=1
export bucket=sourcecode
export src=web
export instance_type=t1.micro
export dynamodb="Table"
export min_size=2
export max_size=8
export log_directory="/var/log/webserver"

export bucket_name=`echo $prefix | tr "[:upper:]" "[:lower:]"`$bucket
export key_name="$prefix""Keypair"
export keypair_out="$prefix""Keypair.out"
export keypair_pem="$prefix""Keypair.pem"
export stage1_name="$prefix""Stage1"
export stage2_name="$prefix""Stage2"
export source_code_link="https://s3.amazonaws.com/$bucket_name/$src.tar.gz"
export image_name="$prefix""Image"
export image_description="image for $prefix"
export dynamodb_name="$prefix""$dynamodb"
