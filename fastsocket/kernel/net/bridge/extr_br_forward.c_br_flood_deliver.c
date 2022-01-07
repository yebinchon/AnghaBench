
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_bridge {int dummy; } ;


 int __br_deliver ;
 int br_flood (struct net_bridge*,struct sk_buff*,int *,int ) ;

void br_flood_deliver(struct net_bridge *br, struct sk_buff *skb)
{
 br_flood(br, skb, ((void*)0), __br_deliver);
}
