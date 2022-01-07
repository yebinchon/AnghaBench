
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_bridge {int dummy; } ;


 int __br_forward ;
 int br_flood (struct net_bridge*,struct sk_buff*,struct sk_buff*,int ) ;

void br_flood_forward(struct net_bridge *br, struct sk_buff *skb,
        struct sk_buff *skb2)
{
 br_flood(br, skb, skb2, __br_forward);
}
