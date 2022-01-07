
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int* data; } ;
struct packet_type {int dummy; } ;
struct net_device {scalar_t__ dev_addr; } ;
typedef int ax25_address ;


 int AX25_KISS_HEADER_LEN ;
 int ax25_rcv (struct sk_buff*,struct net_device*,int *,struct packet_type*) ;
 int dev_net (struct net_device*) ;
 int init_net ;
 int kfree_skb (struct sk_buff*) ;
 int net_eq (int ,int *) ;
 int skb_orphan (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int ) ;

int ax25_kiss_rcv(struct sk_buff *skb, struct net_device *dev,
    struct packet_type *ptype, struct net_device *orig_dev)
{
 skb_orphan(skb);

 if (!net_eq(dev_net(dev), &init_net)) {
  kfree_skb(skb);
  return 0;
 }

 if ((*skb->data & 0x0F) != 0) {
  kfree_skb(skb);
  return 0;
 }

 skb_pull(skb, AX25_KISS_HEADER_LEN);

 return ax25_rcv(skb, dev, (ax25_address *)dev->dev_addr, ptype);
}
