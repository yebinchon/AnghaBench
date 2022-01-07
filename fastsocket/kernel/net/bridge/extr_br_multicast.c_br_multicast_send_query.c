
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_bridge_port {int multicast_query_timer; } ;
struct net_bridge {scalar_t__ multicast_startup_query_count; int multicast_query_timer; scalar_t__ multicast_query_interval; scalar_t__ multicast_startup_query_interval; int multicast_querier_timer; int multicast_querier; scalar_t__ multicast_disabled; int dev; } ;
struct br_ip {void* proto; int u; } ;


 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int __br_multicast_send_query (struct net_bridge*,struct net_bridge_port*,struct br_ip*) ;
 void* htons (int ) ;
 unsigned long jiffies ;
 int memset (int *,int ,int) ;
 int mod_timer (int *,unsigned long) ;
 int netif_running (int ) ;
 scalar_t__ timer_pending (int *) ;

__attribute__((used)) static void br_multicast_send_query(struct net_bridge *br,
        struct net_bridge_port *port, u32 sent)
{
 unsigned long time;
 struct br_ip br_group;

 if (!netif_running(br->dev) || br->multicast_disabled ||
     !br->multicast_querier ||
     timer_pending(&br->multicast_querier_timer))
  return;

 memset(&br_group.u, 0, sizeof(br_group.u));

 br_group.proto = htons(ETH_P_IP);
 __br_multicast_send_query(br, port, &br_group);






 time = jiffies;
 time += sent < br->multicast_startup_query_count ?
  br->multicast_startup_query_interval :
  br->multicast_query_interval;
 mod_timer(port ? &port->multicast_query_timer :
    &br->multicast_query_timer, time);
}
