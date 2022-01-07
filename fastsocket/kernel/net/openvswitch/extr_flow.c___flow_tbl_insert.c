
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow {int * hash_node; int hash; } ;
struct hlist_head {int dummy; } ;
struct flow_table {size_t node_ver; int count; } ;


 struct hlist_head* find_bucket (struct flow_table*,int ) ;
 int hlist_add_head_rcu (int *,struct hlist_head*) ;

__attribute__((used)) static void __flow_tbl_insert(struct flow_table *table, struct sw_flow *flow)
{
 struct hlist_head *head;
 head = find_bucket(table, flow->hash);
 hlist_add_head_rcu(&flow->hash_node[table->node_ver], head);
 table->count++;
}
