
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; int protocol; } ;
struct net_device {int dummy; } ;
struct neighbour {TYPE_1__* ops; int lock; int ha; struct net_device* dev; } ;
struct dst_entry {struct neighbour* neighbour; } ;
struct TYPE_2__ {int (* queue_xmit ) (struct sk_buff*) ;} ;


 int EINVAL ;
 int __skb_pull (struct sk_buff*,int ) ;
 int dev_hard_header (struct sk_buff*,struct net_device*,int ,int ,int *,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int ntohs (int ) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 struct dst_entry* skb_dst (struct sk_buff*) ;
 int skb_network_offset (struct sk_buff*) ;
 int stub1 (struct sk_buff*) ;

int neigh_connected_output(struct sk_buff *skb)
{
 int err;
 struct dst_entry *dst = skb_dst(skb);
 struct neighbour *neigh = dst->neighbour;
 struct net_device *dev = neigh->dev;

 __skb_pull(skb, skb_network_offset(skb));

 read_lock_bh(&neigh->lock);
 err = dev_hard_header(skb, dev, ntohs(skb->protocol),
         neigh->ha, ((void*)0), skb->len);
 read_unlock_bh(&neigh->lock);
 if (err >= 0)
  err = neigh->ops->queue_xmit(skb);
 else {
  err = -EINVAL;
  kfree_skb(skb);
 }
 return err;
}
