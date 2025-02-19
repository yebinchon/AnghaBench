
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
 int ETH_ALEN ;
 int ETH_P_8021Q ;
 int ETH_P_DSA ;
 int NETDEV_TX_OK ;
 int dev_queue_xmit (struct sk_buff*) ;
 scalar_t__ htons (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int memmove (int*,int*,int) ;
 struct dsa_slave_priv* netdev_priv (struct net_device*) ;
 scalar_t__ skb_cow_head (struct sk_buff*,int) ;
 int skb_push (struct sk_buff*,int) ;

netdev_tx_t dsa_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct dsa_slave_priv *p = netdev_priv(dev);
 u8 *dsa_header;

 dev->stats.tx_packets++;
 dev->stats.tx_bytes += skb->len;






 if (skb->protocol == htons(ETH_P_8021Q)) {
  if (skb_cow_head(skb, 0) < 0)
   goto out_free;




  dsa_header = skb->data + 2 * ETH_ALEN;
  dsa_header[0] = 0x60 | p->parent->index;
  dsa_header[1] = p->port << 3;




  if (dsa_header[2] & 0x10) {
   dsa_header[1] |= 0x01;
   dsa_header[2] &= ~0x10;
  }
 } else {
  if (skb_cow_head(skb, DSA_HLEN) < 0)
   goto out_free;
  skb_push(skb, DSA_HLEN);

  memmove(skb->data, skb->data + DSA_HLEN, 2 * ETH_ALEN);




  dsa_header = skb->data + 2 * ETH_ALEN;
  dsa_header[0] = 0x40 | p->parent->index;
  dsa_header[1] = p->port << 3;
  dsa_header[2] = 0x00;
  dsa_header[3] = 0x00;
 }

 skb->protocol = htons(ETH_P_DSA);

 skb->dev = p->parent->dst->master_netdev;
 dev_queue_xmit(skb);

 return NETDEV_TX_OK;

out_free:
 kfree_skb(skb);
 return NETDEV_TX_OK;
}
