
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow {int * hash_node; } ;
struct flow_table {scalar_t__ count; size_t node_ver; } ;


 int BUG_ON (int) ;
 int hlist_del_rcu (int *) ;

void ovs_flow_tbl_remove(struct flow_table *table, struct sw_flow *flow)
{
 BUG_ON(table->count == 0);
 hlist_del_rcu(&flow->hash_node[table->node_ver]);
 table->count--;
}
