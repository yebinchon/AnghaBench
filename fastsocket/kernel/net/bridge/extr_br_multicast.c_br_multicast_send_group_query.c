
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_bridge_mdb_entry {scalar_t__ queries_sent; int query_timer; int addr; struct net_bridge* br; } ;
struct net_bridge {scalar_t__ multicast_last_member_count; scalar_t__ multicast_last_member_interval; } ;


 struct sk_buff* br_multicast_alloc_query (struct net_bridge*,int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int netif_rx (struct sk_buff*) ;

__attribute__((used)) static void br_multicast_send_group_query(struct net_bridge_mdb_entry *mp)
{
 struct net_bridge *br = mp->br;
 struct sk_buff *skb;

 skb = br_multicast_alloc_query(br, &mp->addr);
 if (!skb)
  goto timer;

 netif_rx(skb);

timer:
 if (++mp->queries_sent < br->multicast_last_member_count)
  mod_timer(&mp->query_timer,
     jiffies + br->multicast_last_member_interval);
}
