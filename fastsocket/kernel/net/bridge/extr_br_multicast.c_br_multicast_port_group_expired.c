
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_bridge_port_group {int mglist; int timer; TYPE_1__* port; } ;
struct net_bridge {int multicast_lock; int dev; } ;
struct TYPE_2__ {struct net_bridge* br; } ;


 int br_multicast_del_pg (struct net_bridge*,struct net_bridge_port_group*) ;
 scalar_t__ hlist_unhashed (int *) ;
 int netif_running (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ timer_pending (int *) ;

__attribute__((used)) static void br_multicast_port_group_expired(unsigned long data)
{
 struct net_bridge_port_group *pg = (void *)data;
 struct net_bridge *br = pg->port->br;

 spin_lock(&br->multicast_lock);
 if (!netif_running(br->dev) || timer_pending(&pg->timer) ||
     hlist_unhashed(&pg->mglist))
  goto out;

 br_multicast_del_pg(br, pg);

out:
 spin_unlock(&br->multicast_lock);
}
