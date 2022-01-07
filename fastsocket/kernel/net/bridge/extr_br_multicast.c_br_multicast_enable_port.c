
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {struct net_bridge* br; } ;
struct net_bridge {int multicast_lock; int dev; scalar_t__ multicast_disabled; } ;


 int __br_multicast_enable_port (struct net_bridge_port*) ;
 int netif_running (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void br_multicast_enable_port(struct net_bridge_port *port)
{
 struct net_bridge *br = port->br;

 spin_lock(&br->multicast_lock);
 if (br->multicast_disabled || !netif_running(br->dev))
  goto out;

 __br_multicast_enable_port(port);

out:
 spin_unlock(&br->multicast_lock);
}
