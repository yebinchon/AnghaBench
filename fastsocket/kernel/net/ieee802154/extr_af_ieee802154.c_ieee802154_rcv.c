
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ pkt_type; int len; int data; } ;
struct packet_type {int dummy; } ;
struct net_device {scalar_t__ type; } ;


 scalar_t__ ARPHRD_IEEE802154 ;
 int DUMP_PREFIX_NONE ;
 int ENODEV ;
 int NET_RX_DROP ;
 scalar_t__ PACKET_OTHERHOST ;
 int dev_net (struct net_device*) ;
 int ieee802154_dgram_deliver (struct net_device*,struct sk_buff*) ;
 int ieee802154_raw_deliver (struct net_device*,struct sk_buff*) ;
 int init_net ;
 int kfree_skb (struct sk_buff*) ;
 int net_eq (int ,int *) ;
 int netif_running (struct net_device*) ;
 int pr_debug (char*,scalar_t__,struct net_device*) ;
 int print_hex_dump_bytes (char*,int ,int ,int ) ;

__attribute__((used)) static int ieee802154_rcv(struct sk_buff *skb, struct net_device *dev,
 struct packet_type *pt, struct net_device *orig_dev)
{
 if (!netif_running(dev))
  return -ENODEV;
 pr_debug("got frame, type %d, dev %p\n", dev->type, dev);




 if (!net_eq(dev_net(dev), &init_net))
  goto drop;

 ieee802154_raw_deliver(dev, skb);

 if (dev->type != ARPHRD_IEEE802154)
  goto drop;

 if (skb->pkt_type != PACKET_OTHERHOST)
  return ieee802154_dgram_deliver(dev, skb);

drop:
 kfree_skb(skb);
 return NET_RX_DROP;
}
