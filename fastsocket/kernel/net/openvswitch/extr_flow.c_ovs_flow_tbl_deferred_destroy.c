
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flow_table {int rcu; } ;


 int call_rcu (int *,int ) ;
 int flow_tbl_destroy_rcu_cb ;

void ovs_flow_tbl_deferred_destroy(struct flow_table *table)
{
 if (!table)
  return;

 call_rcu(&table->rcu, flow_tbl_destroy_rcu_cb);
}
