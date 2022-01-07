
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {TYPE_1__* dev; } ;
struct net_bridge_port {TYPE_1__* dev; } ;
struct TYPE_3__ {scalar_t__ mtu; } ;


 int ETH_HLEN ;
 int NFPROTO_BRIDGE ;
 int NF_BR_LOCAL_OUT ;
 int NF_HOOK (int ,int ,struct sk_buff*,int *,TYPE_1__*,int ) ;
 int br_forward_finish ;
 int br_netpoll_send_skb (struct net_bridge_port const*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int netpoll_tx_running (TYPE_1__*) ;
 scalar_t__ packet_length (struct sk_buff*) ;
 int skb_is_gso (struct sk_buff*) ;
 int skb_push (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void __br_deliver(const struct net_bridge_port *to, struct sk_buff *skb)
{
 skb->dev = to->dev;

 if (unlikely(netpoll_tx_running(to->dev))) {
  if (packet_length(skb) > skb->dev->mtu && !skb_is_gso(skb))
   kfree_skb(skb);
  else {
   skb_push(skb, ETH_HLEN);
   br_netpoll_send_skb(to, skb);
  }
  return;
 }

 NF_HOOK(NFPROTO_BRIDGE, NF_BR_LOCAL_OUT, skb, ((void*)0), skb->dev,
  br_forward_finish);
}
