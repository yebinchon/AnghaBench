
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flow_table {int n_buckets; } ;


 struct flow_table* __flow_tbl_rehash (struct flow_table*,int ) ;

struct flow_table *ovs_flow_tbl_rehash(struct flow_table *table)
{
 return __flow_tbl_rehash(table, table->n_buckets);
}
