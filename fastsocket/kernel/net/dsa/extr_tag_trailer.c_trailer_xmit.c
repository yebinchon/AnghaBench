
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int len; int dev; int protocol; scalar_t__ head; } ;
struct TYPE_4__ {int tx_bytes; int tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct dsa_slave_priv {int port; TYPE_3__* parent; } ;
typedef int netdev_tx_t ;
struct TYPE_6__ {TYPE_2__* dst; } ;
struct TYPE_5__ {int master_netdev; } ;


 int ETH_P_TRAILER ;
 int GFP_ATOMIC ;
 int NETDEV_TX_OK ;
 scalar_t__ NET_IP_ALIGN ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 int dev_queue_xmit (struct sk_buff*) ;
 int htons (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int memset (int*,int ,int) ;
 struct dsa_slave_priv* netdev_priv (struct net_device*) ;
 int skb_copy_and_csum_dev (struct sk_buff*,int*) ;
 scalar_t__ skb_network_header (struct sk_buff*) ;
 int* skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_set_network_header (struct sk_buff*,scalar_t__) ;
 int skb_set_transport_header (struct sk_buff*,scalar_t__) ;
 scalar_t__ skb_transport_header (struct sk_buff*) ;

netdev_tx_t trailer_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct dsa_slave_priv *p = netdev_priv(dev);
 struct sk_buff *nskb;
 int padlen;
 u8 *trailer;

 dev->stats.tx_packets++;
 dev->stats.tx_bytes += skb->len;







 padlen = 0;
 if (skb->len < 60)
  padlen = 60 - skb->len;

 nskb = alloc_skb(NET_IP_ALIGN + skb->len + padlen + 4, GFP_ATOMIC);
 if (nskb == ((void*)0)) {
  kfree_skb(skb);
  return NETDEV_TX_OK;
 }
 skb_reserve(nskb, NET_IP_ALIGN);

 skb_reset_mac_header(nskb);
 skb_set_network_header(nskb, skb_network_header(skb) - skb->head);
 skb_set_transport_header(nskb, skb_transport_header(skb) - skb->head);
 skb_copy_and_csum_dev(skb, skb_put(nskb, skb->len));
 kfree_skb(skb);

 if (padlen) {
  u8 *pad = skb_put(nskb, padlen);
  memset(pad, 0, padlen);
 }

 trailer = skb_put(nskb, 4);
 trailer[0] = 0x80;
 trailer[1] = 1 << p->port;
 trailer[2] = 0x10;
 trailer[3] = 0x00;

 nskb->protocol = htons(ETH_P_TRAILER);

 nskb->dev = p->parent->dst->master_netdev;
 dev_queue_xmit(nskb);

 return NETDEV_TX_OK;
}
