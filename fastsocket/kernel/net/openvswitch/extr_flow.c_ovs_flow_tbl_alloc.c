
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct flow_table {int n_buckets; int keep_flows; int hash_seed; scalar_t__ node_ver; scalar_t__ count; int buckets; } ;


 int GFP_KERNEL ;
 int alloc_buckets (int) ;
 int get_random_bytes (int *,int) ;
 int kfree (struct flow_table*) ;
 struct flow_table* kmalloc (int,int ) ;

struct flow_table *ovs_flow_tbl_alloc(int new_size)
{
 struct flow_table *table = kmalloc(sizeof(*table), GFP_KERNEL);

 if (!table)
  return ((void*)0);

 table->buckets = alloc_buckets(new_size);

 if (!table->buckets) {
  kfree(table);
  return ((void*)0);
 }
 table->n_buckets = new_size;
 table->count = 0;
 table->node_ver = 0;
 table->keep_flows = 0;
 get_random_bytes(&table->hash_seed, sizeof(u32));

 return table;
}
