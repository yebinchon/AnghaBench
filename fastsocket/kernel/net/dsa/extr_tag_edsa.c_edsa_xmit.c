
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {scalar_t__ protocol; int* data; int dev; scalar_t__ len; } ;
struct TYPE_4__ {int tx_bytes; int tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct dsa_slave_priv {int port; TYPE_3__* parent; } ;
typedef int netdev_tx_t ;
struct TYPE_6__ {int index; TYPE_2__* dst; } ;
struct TYPE_5__ {int master_netdev; } ;


 int DSA_HLEN ;
 int EDSA_HLEN ;
 int ETH_ALEN ;
 int ETH_P_8021Q ;
 int ETH_P_EDSA ;
 int NETDEV_TX_OK ;
 int dev_queue_xmit (struct sk_buff*) ;
 scalar_t__ htons (int) ;
 int kfree_skb (struct sk_buff*) ;
 int memmove (int*,int*,int) ;
 struct dsa_slave_priv* netdev_priv (struct net_device*) ;
 scalar_t__ skb_cow_head (struct sk_buff*,int) ;
 int skb_push (struct sk_buff*,int) ;

netdev_tx_t edsa_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct dsa_slave_priv *p = netdev_priv(dev);
 u8 *edsa_header;

 dev->stats.tx_packets++;
 dev->stats.tx_bytes += skb->len;







 if (skb->protocol == htons(ETH_P_8021Q)) {
  if (skb_cow_head(skb, DSA_HLEN) < 0)
   goto out_free;
  skb_push(skb, DSA_HLEN);

  memmove(skb->data, skb->data + DSA_HLEN, 2 * ETH_ALEN);




  edsa_header = skb->data + 2 * ETH_ALEN;
  edsa_header[0] = (ETH_P_EDSA >> 8) & 0xff;
  edsa_header[1] = ETH_P_EDSA & 0xff;
  edsa_header[2] = 0x00;
  edsa_header[3] = 0x00;
  edsa_header[4] = 0x60 | p->parent->index;
  edsa_header[5] = p->port << 3;




  if (edsa_header[6] & 0x10) {
   edsa_header[5] |= 0x01;
   edsa_header[6] &= ~0x10;
  }
 } else {
  if (skb_cow_head(skb, EDSA_HLEN) < 0)
   goto out_free;
  skb_push(skb, EDSA_HLEN);

  memmove(skb->data, skb->data + EDSA_HLEN, 2 * ETH_ALEN);




  edsa_header = skb->data + 2 * ETH_ALEN;
  edsa_header[0] = (ETH_P_EDSA >> 8) & 0xff;
  edsa_header[1] = ETH_P_EDSA & 0xff;
  edsa_header[2] = 0x00;
  edsa_header[3] = 0x00;
  edsa_header[4] = 0x40 | p->parent->index;
  edsa_header[5] = p->port << 3;
  edsa_header[6] = 0x00;
  edsa_header[7] = 0x00;
 }

 skb->protocol = htons(ETH_P_EDSA);

 skb->dev = p->parent->dst->master_netdev;
 dev_queue_xmit(skb);

 return NETDEV_TX_OK;

out_free:
 kfree_skb(skb);
 return NETDEV_TX_OK;
}
