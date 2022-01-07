
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_bridge {int lock; scalar_t__ topology_change; scalar_t__ topology_change_detected; TYPE_1__* dev; } ;
struct TYPE_2__ {int name; } ;


 int pr_debug (char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void br_topology_change_timer_expired(unsigned long arg)
{
 struct net_bridge *br = (struct net_bridge *) arg;

 pr_debug("%s: topo change timer expired\n", br->dev->name);
 spin_lock(&br->lock);
 br->topology_change_detected = 0;
 br->topology_change = 0;
 spin_unlock(&br->lock);
}
