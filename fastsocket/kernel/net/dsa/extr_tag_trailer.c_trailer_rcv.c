
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {scalar_t__ len; TYPE_2__* dev; int protocol; int pkt_type; } ;
struct packet_type {int dummy; } ;
struct net_device {struct dsa_switch_tree* dsa_ptr; } ;
struct dsa_switch_tree {struct dsa_switch** ds; } ;
struct dsa_switch {TYPE_2__** ports; } ;
struct TYPE_3__ {int rx_bytes; int rx_packets; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 int DSA_MAX_PORTS ;
 int ETH_HLEN ;
 int GFP_ATOMIC ;
 int PACKET_HOST ;
 int eth_type_trans (struct sk_buff*,TYPE_2__*) ;
 int kfree_skb (struct sk_buff*) ;
 int netif_receive_skb (struct sk_buff*) ;
 int pskb_trim_rcsum (struct sk_buff*,scalar_t__) ;
 scalar_t__ skb_linearize (struct sk_buff*) ;
 int skb_push (struct sk_buff*,int ) ;
 int* skb_tail_pointer (struct sk_buff*) ;
 struct sk_buff* skb_unshare (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int trailer_rcv(struct sk_buff *skb, struct net_device *dev,
         struct packet_type *pt, struct net_device *orig_dev)
{
 struct dsa_switch_tree *dst = dev->dsa_ptr;
 struct dsa_switch *ds;
 u8 *trailer;
 int source_port;

 if (unlikely(dst == ((void*)0)))
  goto out_drop;
 ds = dst->ds[0];

 skb = skb_unshare(skb, GFP_ATOMIC);
 if (skb == ((void*)0))
  goto out;

 if (skb_linearize(skb))
  goto out_drop;

 trailer = skb_tail_pointer(skb) - 4;
 if (trailer[0] != 0x80 || (trailer[1] & 0xf8) != 0x00 ||
     (trailer[3] & 0xef) != 0x00 || trailer[3] != 0x00)
  goto out_drop;

 source_port = trailer[1] & 7;
 if (source_port >= DSA_MAX_PORTS || ds->ports[source_port] == ((void*)0))
  goto out_drop;

 pskb_trim_rcsum(skb, skb->len - 4);

 skb->dev = ds->ports[source_port];
 skb_push(skb, ETH_HLEN);
 skb->pkt_type = PACKET_HOST;
 skb->protocol = eth_type_trans(skb, skb->dev);

 skb->dev->stats.rx_packets++;
 skb->dev->stats.rx_bytes += skb->len;

 netif_receive_skb(skb);

 return 0;

out_drop:
 kfree_skb(skb);
out:
 return 0;
}
