
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_key {int dummy; } ;
struct sw_flow {int key; int hash; } ;
struct flow_table {int dummy; } ;


 int __flow_tbl_insert (struct flow_table*,struct sw_flow*) ;
 int flow_key_start (struct sw_flow_key*) ;
 int memcpy (int *,struct sw_flow_key*,int) ;
 int ovs_flow_hash (struct sw_flow_key*,int ,int) ;

void ovs_flow_tbl_insert(struct flow_table *table, struct sw_flow *flow,
    struct sw_flow_key *key, int key_len)
{
 flow->hash = ovs_flow_hash(key, flow_key_start(key), key_len);
 memcpy(&flow->key, key, sizeof(flow->key));
 __flow_tbl_insert(table, flow);
}
