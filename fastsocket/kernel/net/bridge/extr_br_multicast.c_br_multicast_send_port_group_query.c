
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_bridge_port_group {scalar_t__ queries_sent; int query_timer; int addr; struct net_bridge_port* port; } ;
struct net_bridge_port {struct net_bridge* br; } ;
struct net_bridge {scalar_t__ multicast_last_member_count; scalar_t__ multicast_last_member_interval; } ;


 int br_deliver (struct net_bridge_port*,struct sk_buff*) ;
 struct sk_buff* br_multicast_alloc_query (struct net_bridge*,int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void br_multicast_send_port_group_query(struct net_bridge_port_group *pg)
{
 struct net_bridge_port *port = pg->port;
 struct net_bridge *br = port->br;
 struct sk_buff *skb;

 skb = br_multicast_alloc_query(br, &pg->addr);
 if (!skb)
  goto timer;

 br_deliver(port, skb);

timer:
 if (++pg->queries_sent < br->multicast_last_member_count)
  mod_timer(&pg->query_timer,
     jiffies + br->multicast_last_member_interval);
}
