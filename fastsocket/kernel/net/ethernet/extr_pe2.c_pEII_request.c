
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int protocol; struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct datalink_proto {int dummy; } ;


 int ETH_P_IPX ;
 int dev_hard_header (struct sk_buff*,struct net_device*,int ,unsigned char*,int *,int ) ;
 int dev_queue_xmit (struct sk_buff*) ;
 int htons (int ) ;

__attribute__((used)) static int pEII_request(struct datalink_proto *dl,
   struct sk_buff *skb, unsigned char *dest_node)
{
 struct net_device *dev = skb->dev;

 skb->protocol = htons(ETH_P_IPX);
 dev_hard_header(skb, dev, ETH_P_IPX, dest_node, ((void*)0), skb->len);
 return dev_queue_xmit(skb);
}
