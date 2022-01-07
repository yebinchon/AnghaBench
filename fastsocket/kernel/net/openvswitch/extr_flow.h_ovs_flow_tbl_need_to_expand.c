
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flow_table {scalar_t__ count; scalar_t__ n_buckets; } ;



__attribute__((used)) static inline int ovs_flow_tbl_need_to_expand(struct flow_table *table)
{
 return (table->count > table->n_buckets);
}
