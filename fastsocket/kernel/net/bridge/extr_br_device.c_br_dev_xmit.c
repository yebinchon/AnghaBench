
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {unsigned char* data; scalar_t__ len; } ;
struct TYPE_3__ {int tx_bytes; int tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct net_bridge_mdb_entry {int dummy; } ;
struct net_bridge_fdb_entry {int dst; } ;
struct net_bridge {int dummy; } ;
typedef int netdev_tx_t ;
struct TYPE_4__ {scalar_t__ mrouters_only; struct net_device* brdev; } ;


 TYPE_2__* BR_INPUT_SKB_CB (struct sk_buff*) ;
 int ETH_HLEN ;
 int NETDEV_TX_OK ;
 struct net_bridge_fdb_entry* __br_fdb_get (struct net_bridge*,unsigned char const*) ;
 int br_deliver (int ,struct sk_buff*) ;
 int br_flood_deliver (struct net_bridge*,struct sk_buff*) ;
 struct net_bridge_mdb_entry* br_mdb_get (struct net_bridge*,struct sk_buff*) ;
 int br_multicast_deliver (struct net_bridge_mdb_entry*,struct sk_buff*) ;
 scalar_t__ br_multicast_rcv (struct net_bridge*,int *,struct sk_buff*) ;
 scalar_t__ is_broadcast_ether_addr (unsigned char const*) ;
 scalar_t__ is_multicast_ether_addr (unsigned char const*) ;
 int kfree_skb (struct sk_buff*) ;
 struct net_bridge* netdev_priv (struct net_device*) ;
 int netpoll_tx_running (struct net_device*) ;
 int skb_pull (struct sk_buff*,int ) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;

netdev_tx_t br_dev_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct net_bridge *br = netdev_priv(dev);
 const unsigned char *dest = skb->data;
 struct net_bridge_fdb_entry *dst;
 struct net_bridge_mdb_entry *mdst;

 BR_INPUT_SKB_CB(skb)->brdev = dev;

 dev->stats.tx_packets++;
 dev->stats.tx_bytes += skb->len;

 skb_reset_mac_header(skb);
 skb_pull(skb, ETH_HLEN);

 if (is_broadcast_ether_addr(dest))
  br_flood_deliver(br, skb);
 else if (is_multicast_ether_addr(dest)) {
  if (unlikely(netpoll_tx_running(dev))) {
   br_flood_deliver(br, skb);
   goto out;
  }
  if (br_multicast_rcv(br, ((void*)0), skb)) {
   kfree_skb(skb);
   goto out;
  }

  mdst = br_mdb_get(br, skb);
  if (mdst || BR_INPUT_SKB_CB(skb)->mrouters_only)
   br_multicast_deliver(mdst, skb);
  else
   br_flood_deliver(br, skb);
 } else if ((dst = __br_fdb_get(br, dest)) != ((void*)0))
  br_deliver(dst->dst, skb);
 else
  br_flood_deliver(br, skb);

out:
 return NETDEV_TX_OK;
}
