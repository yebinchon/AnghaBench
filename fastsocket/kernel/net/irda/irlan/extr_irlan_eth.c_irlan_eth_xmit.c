
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct net_device {int trans_start; } ;
struct TYPE_2__ {int tx_bytes; int tx_packets; int tx_dropped; } ;
struct irlan_cb {scalar_t__ max_header_size; TYPE_1__ stats; int tsap_data; scalar_t__ use_udata; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 int dev_kfree_skb (struct sk_buff*) ;
 int irttp_data_request (int ,struct sk_buff*) ;
 int irttp_udata_request (int ,struct sk_buff*) ;
 int jiffies ;
 struct irlan_cb* netdev_priv (struct net_device*) ;
 scalar_t__ skb_headroom (struct sk_buff*) ;
 struct sk_buff* skb_realloc_headroom (struct sk_buff*,scalar_t__) ;
 scalar_t__ skb_shared (struct sk_buff*) ;

__attribute__((used)) static netdev_tx_t irlan_eth_xmit(struct sk_buff *skb,
     struct net_device *dev)
{
 struct irlan_cb *self = netdev_priv(dev);
 int ret;


 if ((skb_headroom(skb) < self->max_header_size) || (skb_shared(skb))) {
  struct sk_buff *new_skb =
   skb_realloc_headroom(skb, self->max_header_size);


  dev_kfree_skb(skb);


  if (new_skb == ((void*)0))
   return NETDEV_TX_OK;


  skb = new_skb;
 }

 dev->trans_start = jiffies;


 if (self->use_udata)
  ret = irttp_udata_request(self->tsap_data, skb);
 else
  ret = irttp_data_request(self->tsap_data, skb);

 if (ret < 0) {
  self->stats.tx_dropped++;
 } else {
  self->stats.tx_packets++;
  self->stats.tx_bytes += skb->len;
 }

 return NETDEV_TX_OK;
}
