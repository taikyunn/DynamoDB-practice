# Write Items
aws dynamodb batch-write-item --request-items file://testproduct3.json

## Scan
# Scan all
aws dynamodb scan --table-name testproduct3

# Scan with filter:
aws dynamodb scan --table-name testproduct3 --projection-expression "created"
aws dynamodb scan --table-name testproduct3 --projection-expression "category"

# Scan with filter:
aws dynamodb scan --table-name testproduct3 --filter-expression "productid = :enginenumber" --expression-attribute-values '{ ":enginenumber": { "S": "10110-4MA0B" }}'
aws dynamodb scan --table-name testproduct3 --filter-expression "price > :n" --expression-attribute-values '{ ":n": { "N": "100" }}'

## Query
# Query with Key Condition:
aws dynamodb query  --table-name testproduct3 --key-conditions '{ "productid":{ "ComparisonOperator":"EQ", "AttributeValueList": [ {"S": "10100-5AB22"} ] } }'

# Query with Key Condition:
aws dynamodb query --table-name testproduct3 --key-condition-expression "productid = :name" --expression-attribute-values '{":name":{"S":"10100-5AB22"}}'