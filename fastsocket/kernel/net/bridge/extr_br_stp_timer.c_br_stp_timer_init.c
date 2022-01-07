
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {int gc_timer; int topology_change_timer; int tcn_timer; int hello_timer; } ;


 int br_fdb_cleanup ;
 int br_hello_timer_expired ;
 int br_tcn_timer_expired ;
 int br_topology_change_timer_expired ;
 int setup_timer (int *,int ,unsigned long) ;

void br_stp_timer_init(struct net_bridge *br)
{
 setup_timer(&br->hello_timer, br_hello_timer_expired,
        (unsigned long) br);

 setup_timer(&br->tcn_timer, br_tcn_timer_expired,
        (unsigned long) br);

 setup_timer(&br->topology_change_timer,
        br_topology_change_timer_expired,
        (unsigned long) br);

 setup_timer(&br->gc_timer, br_fdb_cleanup, (unsigned long) br);
}
