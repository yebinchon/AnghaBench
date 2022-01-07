
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int* data; scalar_t__ ip_summed; scalar_t__ len; TYPE_3__* dev; int protocol; int pkt_type; int csum; } ;
struct packet_type {int dummy; } ;
struct net_device {struct dsa_switch_tree* dsa_ptr; } ;
struct dsa_switch_tree {struct dsa_switch** ds; TYPE_1__* pd; } ;
struct dsa_switch {TYPE_3__** ports; } ;
typedef int __wsum ;
struct TYPE_5__ {int rx_bytes; int rx_packets; } ;
struct TYPE_6__ {TYPE_2__ stats; } ;
struct TYPE_4__ {int nr_chips; } ;


 scalar_t__ CHECKSUM_COMPLETE ;
 scalar_t__ DSA_HLEN ;
 int DSA_MAX_PORTS ;
 scalar_t__ EDSA_HLEN ;
 int ETH_ALEN ;
 int* ETH_HLEN ;
 int ETH_P_8021Q ;
 int GFP_ATOMIC ;
 int PACKET_HOST ;
 int csum_add (int ,int ) ;
 int csum_partial (int*,int,int ) ;
 int csum_sub (int ,int ) ;
 int eth_type_trans (struct sk_buff*,TYPE_3__*) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (int*,int*,scalar_t__) ;
 int memmove (int,scalar_t__,int) ;
 int netif_receive_skb (struct sk_buff*) ;
 int pskb_may_pull (struct sk_buff*,scalar_t__) ;
 int skb_pull_rcsum (struct sk_buff*,scalar_t__) ;
 int skb_push (struct sk_buff*,int*) ;
 struct sk_buff* skb_unshare (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int edsa_rcv(struct sk_buff *skb, struct net_device *dev,
      struct packet_type *pt, struct net_device *orig_dev)
{
 struct dsa_switch_tree *dst = dev->dsa_ptr;
 struct dsa_switch *ds;
 u8 *edsa_header;
 int source_device;
 int source_port;

 if (unlikely(dst == ((void*)0)))
  goto out_drop;

 skb = skb_unshare(skb, GFP_ATOMIC);
 if (skb == ((void*)0))
  goto out;

 if (unlikely(!pskb_may_pull(skb, EDSA_HLEN)))
  goto out_drop;




 edsa_header = skb->data + 2;




 if ((edsa_header[0] & 0xc0) != 0x00 && (edsa_header[0] & 0xc0) != 0xc0)
  goto out_drop;




 source_device = edsa_header[0] & 0x1f;
 source_port = (edsa_header[1] >> 3) & 0x1f;





 if (source_device >= dst->pd->nr_chips)
  goto out_drop;
 ds = dst->ds[source_device];
 if (source_port >= DSA_MAX_PORTS || ds->ports[source_port] == ((void*)0))
  goto out_drop;






 if (edsa_header[0] & 0x20) {
  u8 new_header[4];






  new_header[0] = (ETH_P_8021Q >> 8) & 0xff;
  new_header[1] = ETH_P_8021Q & 0xff;
  new_header[2] = edsa_header[2] & ~0x10;
  new_header[3] = edsa_header[3];





  if (edsa_header[1] & 0x01)
   new_header[2] |= 0x10;

  skb_pull_rcsum(skb, DSA_HLEN);




  if (skb->ip_summed == CHECKSUM_COMPLETE) {
   __wsum c = skb->csum;
   c = csum_add(c, csum_partial(new_header + 2, 2, 0));
   c = csum_sub(c, csum_partial(edsa_header + 2, 2, 0));
   skb->csum = c;
  }

  memcpy(edsa_header, new_header, DSA_HLEN);

  memmove(skb->data - ETH_HLEN,
   skb->data - ETH_HLEN - DSA_HLEN,
   2 * ETH_ALEN);
 } else {



  skb_pull_rcsum(skb, EDSA_HLEN);
  memmove(skb->data - ETH_HLEN,
   skb->data - ETH_HLEN - EDSA_HLEN,
   2 * ETH_ALEN);
 }

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
