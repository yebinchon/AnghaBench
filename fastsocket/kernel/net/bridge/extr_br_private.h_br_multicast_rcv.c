
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_bridge_port {int dummy; } ;
struct net_bridge {int dummy; } ;



__attribute__((used)) static inline int br_multicast_rcv(struct net_bridge *br,
       struct net_bridge_port *port,
       struct sk_buff *skb)
{
 return 0;
}
