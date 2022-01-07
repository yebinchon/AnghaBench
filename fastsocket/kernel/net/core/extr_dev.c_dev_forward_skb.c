
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tv64; } ;
struct sk_buff {scalar_t__ mark; int protocol; int pkt_type; TYPE_1__ tstamp; scalar_t__ iif; } ;
struct net_device {int dummy; } ;


 int NET_RX_DROP ;
 int PACKET_HOST ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int is_skb_forwardable (struct net_device*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int netif_rx (struct sk_buff*) ;
 int nf_reset (struct sk_buff*) ;
 int secpath_reset (struct sk_buff*) ;
 int skb_dst_drop (struct sk_buff*) ;
 int skb_orphan (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

int dev_forward_skb(struct net_device *dev, struct sk_buff *skb)
{
 skb_orphan(skb);
 nf_reset(skb);

 if (unlikely(!is_skb_forwardable(dev, skb))) {
  kfree_skb(skb);
  return NET_RX_DROP;
 }
 skb->iif = 0;
 skb_dst_drop(skb);
 skb->tstamp.tv64 = 0;
 skb->pkt_type = PACKET_HOST;
 skb->protocol = eth_type_trans(skb, dev);
 skb->mark = 0;
 secpath_reset(skb);
 nf_reset(skb);
 return netif_rx(skb);
}
