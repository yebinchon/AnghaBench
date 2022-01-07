
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct net_bridge_port {struct net_device* dev; } ;


 int NF_BR_FORWARD ;
 int NF_HOOK (int ,int ,struct sk_buff*,struct net_device*,struct net_device*,int ) ;
 int PF_BRIDGE ;
 int br_forward_finish ;
 int kfree_skb (struct sk_buff*) ;
 int skb_forward_csum (struct sk_buff*) ;
 scalar_t__ skb_warn_if_lro (struct sk_buff*) ;

__attribute__((used)) static void __br_forward(const struct net_bridge_port *to, struct sk_buff *skb)
{
 struct net_device *indev;

 if (skb_warn_if_lro(skb)) {
  kfree_skb(skb);
  return;
 }

 indev = skb->dev;
 skb->dev = to->dev;
 skb_forward_csum(skb);

 NF_HOOK(PF_BRIDGE, NF_BR_FORWARD, skb, indev, skb->dev,
   br_forward_finish);
}
