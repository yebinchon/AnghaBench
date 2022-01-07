
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {int dummy; } ;
struct net_bridge {int multicast_querier_timer; scalar_t__ multicast_querier_interval; } ;


 int br_multicast_mark_router (struct net_bridge*,struct net_bridge_port*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ timer_pending (int *) ;

__attribute__((used)) static void br_multicast_query_received(struct net_bridge *br,
     struct net_bridge_port *port,
     int saddr)
{
 if (saddr)
  mod_timer(&br->multicast_querier_timer,
     jiffies + br->multicast_querier_interval);
 else if (timer_pending(&br->multicast_querier_timer))
  return;

 br_multicast_mark_router(br, port);
}
