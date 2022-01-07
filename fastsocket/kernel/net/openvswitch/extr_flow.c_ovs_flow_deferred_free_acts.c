
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_actions {int dummy; } ;


 int kfree_rcu (struct sw_flow_actions*,int ) ;
 int rcu ;

void ovs_flow_deferred_free_acts(struct sw_flow_actions *sf_acts)
{
 kfree_rcu(sf_acts, rcu);
}
