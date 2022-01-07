
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {int multicast_router; int multicast_router_timer; int rlist; } ;
struct net_bridge {int multicast_router; scalar_t__ multicast_querier_interval; int multicast_router_timer; } ;


 int br_multicast_add_router (struct net_bridge*,struct net_bridge_port*) ;
 int hlist_unhashed (int *) ;
 unsigned long jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void br_multicast_mark_router(struct net_bridge *br,
         struct net_bridge_port *port)
{
 unsigned long now = jiffies;

 if (!port) {
  if (br->multicast_router == 1)
   mod_timer(&br->multicast_router_timer,
      now + br->multicast_querier_interval);
  return;
 }

 if (port->multicast_router != 1)
  return;

 if (!hlist_unhashed(&port->rlist))
  goto timer;

 br_multicast_add_router(br, port);

timer:
 mod_timer(&port->multicast_router_timer,
    now + br->multicast_querier_interval);
}
