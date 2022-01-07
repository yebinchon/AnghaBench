
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow {int rcu; } ;


 int call_rcu (int *,int ) ;
 int rcu_free_flow_callback ;

void ovs_flow_deferred_free(struct sw_flow *flow)
{
 call_rcu(&flow->rcu, rcu_free_flow_callback);
}
