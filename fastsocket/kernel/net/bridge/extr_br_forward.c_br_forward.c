
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_bridge_port {int dummy; } ;


 int __br_forward (struct net_bridge_port const*,struct sk_buff*) ;
 int deliver_clone (struct net_bridge_port const*,struct sk_buff*,int (*) (struct net_bridge_port const*,struct sk_buff*)) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ should_deliver (struct net_bridge_port const*,struct sk_buff*) ;

void br_forward(const struct net_bridge_port *to, struct sk_buff *skb, struct sk_buff *skb0)
{
 if (should_deliver(to, skb)) {
  if (skb0)
   deliver_clone(to, skb, __br_forward);
  else
   __br_forward(to, skb);
  return;
 }

 if (!skb0)
  kfree_skb(skb);
}
