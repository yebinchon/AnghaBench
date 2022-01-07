
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct sk_buff {struct sk_buff* next; void* protocol; } ;
struct net_device {int dummy; } ;
struct list_head {int dummy; } ;


 int EINVAL ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 scalar_t__ IS_ERR (struct sk_buff*) ;


 int __nf_queue (struct sk_buff*,struct list_head*,int ,unsigned int,struct net_device*,struct net_device*,int (*) (struct sk_buff*),unsigned int) ;
 void* htons (int ) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* skb_gso_segment (struct sk_buff*,int ) ;
 int skb_is_gso (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

int nf_queue(struct sk_buff *skb,
      struct list_head *elem,
      u_int8_t pf, unsigned int hook,
      struct net_device *indev,
      struct net_device *outdev,
      int (*okfn)(struct sk_buff *),
      unsigned int queuenum)
{
 struct sk_buff *segs;
 int err;
 unsigned int queued;

 if (!skb_is_gso(skb))
  return __nf_queue(skb, elem, pf, hook, indev, outdev, okfn,
      queuenum);

 switch (pf) {
 case 129:
  skb->protocol = htons(ETH_P_IP);
  break;
 case 128:
  skb->protocol = htons(ETH_P_IPV6);
  break;
 }

 segs = skb_gso_segment(skb, 0);




 if (IS_ERR(segs))
  return -EINVAL;

 queued = 0;
 err = 0;
 do {
  struct sk_buff *nskb = segs->next;

  segs->next = ((void*)0);
  if (err == 0)
   err = __nf_queue(segs, elem, pf, hook, indev,
        outdev, okfn, queuenum);
  if (err == 0)
   queued++;
  else
   kfree_skb(segs);
  segs = nskb;
 } while (segs);


 if (unlikely(err && queued))
  err = 0;
 if (err == 0)
  kfree_skb(skb);
 return err;
}
