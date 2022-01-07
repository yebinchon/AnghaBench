
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; int protocol; struct net_device* dev; } ;
struct net_device {TYPE_1__* header_ops; } ;
struct TYPE_2__ {scalar_t__ (* rebuild ) (struct sk_buff*) ;} ;


 int __skb_pull (struct sk_buff*,int ) ;
 scalar_t__ dev_hard_header (struct sk_buff*,struct net_device*,int ,int *,int *,int ) ;
 int dev_queue_xmit (struct sk_buff*) ;
 int ntohs (int ) ;
 int skb_network_offset (struct sk_buff*) ;
 scalar_t__ stub1 (struct sk_buff*) ;

int neigh_compat_output(struct sk_buff *skb)
{
 struct net_device *dev = skb->dev;

 __skb_pull(skb, skb_network_offset(skb));

 if (dev_hard_header(skb, dev, ntohs(skb->protocol), ((void*)0), ((void*)0),
       skb->len) < 0 &&
     dev->header_ops->rebuild(skb))
  return 0;

 return dev_queue_xmit(skb);
}
