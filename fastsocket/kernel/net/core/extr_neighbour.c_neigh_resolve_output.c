
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int len; int protocol; } ;
struct net_device {TYPE_1__* header_ops; } ;
struct neighbour {TYPE_3__* ops; int lock; int ha; struct net_device* dev; } ;
struct dst_entry {struct neighbour* neighbour; TYPE_2__* ops; int hh; } ;
struct TYPE_6__ {int (* queue_xmit ) (struct sk_buff*) ;} ;
struct TYPE_5__ {int protocol; } ;
struct TYPE_4__ {scalar_t__ cache; } ;


 int EINVAL ;
 int NEIGH_PRINTK1 (char*,struct dst_entry*,struct neighbour*) ;
 int __skb_pull (struct sk_buff*,int ) ;
 int dev_hard_header (struct sk_buff*,struct net_device*,int ,int ,int *,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int neigh_event_send (struct neighbour*,struct sk_buff*) ;
 int neigh_hh_init (struct neighbour*,struct dst_entry*,int ) ;
 int ntohs (int ) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 struct dst_entry* skb_dst (struct sk_buff*) ;
 int skb_network_offset (struct sk_buff*) ;
 int stub1 (struct sk_buff*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

int neigh_resolve_output(struct sk_buff *skb)
{
 struct dst_entry *dst = skb_dst(skb);
 struct neighbour *neigh;
 int rc = 0;

 if (!dst || !(neigh = dst->neighbour))
  goto discard;

 __skb_pull(skb, skb_network_offset(skb));

 if (!neigh_event_send(neigh, skb)) {
  int err;
  struct net_device *dev = neigh->dev;
  if (dev->header_ops->cache && !dst->hh) {
   write_lock_bh(&neigh->lock);
   if (!dst->hh)
    neigh_hh_init(neigh, dst, dst->ops->protocol);
   err = dev_hard_header(skb, dev, ntohs(skb->protocol),
           neigh->ha, ((void*)0), skb->len);
   write_unlock_bh(&neigh->lock);
  } else {
   read_lock_bh(&neigh->lock);
   err = dev_hard_header(skb, dev, ntohs(skb->protocol),
           neigh->ha, ((void*)0), skb->len);
   read_unlock_bh(&neigh->lock);
  }
  if (err >= 0)
   rc = neigh->ops->queue_xmit(skb);
  else
   goto out_kfree_skb;
 }
out:
 return rc;
discard:
 NEIGH_PRINTK1("neigh_resolve_output: dst=%p neigh=%p\n",
        dst, dst ? dst->neighbour : ((void*)0));
out_kfree_skb:
 rc = -EINVAL;
 kfree_skb(skb);
 goto out;
}
