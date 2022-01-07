
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {int multicast_router; int rlist; int multicast_router_timer; struct net_bridge* br; } ;
struct net_bridge {int multicast_lock; } ;


 int hlist_del_init_rcu (int *) ;
 scalar_t__ hlist_unhashed (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ timer_pending (int *) ;

__attribute__((used)) static void br_multicast_router_expired(unsigned long data)
{
 struct net_bridge_port *port = (void *)data;
 struct net_bridge *br = port->br;

 spin_lock(&br->multicast_lock);
 if (port->multicast_router != 1 ||
     timer_pending(&port->multicast_router_timer) ||
     hlist_unhashed(&port->rlist))
  goto out;

 hlist_del_init_rcu(&port->rlist);

out:
 spin_unlock(&br->multicast_lock);
}
