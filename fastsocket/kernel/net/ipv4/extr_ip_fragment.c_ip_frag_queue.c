
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sk_buff {int len; scalar_t__ ip_summed; int truesize; int tstamp; struct net_device* dev; struct sk_buff* next; } ;
struct net_device {int ifindex; } ;
struct TYPE_7__ {int last_in; int len; int meat; int max_size; TYPE_4__* net; int lru_list; int stamp; struct sk_buff* fragments; } ;
struct ipq {TYPE_1__ q; int iif; } ;
struct TYPE_12__ {int offset; } ;
struct TYPE_11__ {int flags; } ;
struct TYPE_10__ {int lru_list; int mem; } ;
struct TYPE_9__ {int lock; } ;
struct TYPE_8__ {int frag_off; } ;


 void* CHECKSUM_NONE ;
 scalar_t__ CHECKSUM_UNNECESSARY ;
 int EINPROGRESS ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 TYPE_6__* FRAG_CB (struct sk_buff*) ;
 int INET_FRAG_COMPLETE ;
 int INET_FRAG_FIRST_IN ;
 int INET_FRAG_LAST_IN ;
 TYPE_5__* IPCB (struct sk_buff*) ;
 int IPSKB_FRAG_COMPLETE ;
 int IP_DF ;
 int IP_MF ;
 int IP_OFFSET ;
 int atomic_add (int ,int *) ;
 int frag_kfree_skb (TYPE_4__*,struct sk_buff*,int *) ;
 int htons (int ) ;
 TYPE_3__ ip4_frags ;
 int ip_frag_reasm (struct ipq*,struct sk_buff*,struct net_device*) ;
 int ip_frag_reinit (struct ipq*) ;
 int ip_frag_too_far (struct ipq*) ;
 TYPE_2__* ip_hdr (struct sk_buff*) ;
 int ip_hdrlen (struct sk_buff*) ;
 int ipq_kill (struct ipq*) ;
 int kfree_skb (struct sk_buff*) ;
 int list_move_tail (int *,int *) ;
 int ntohs (int) ;
 int * pskb_pull (struct sk_buff*,int) ;
 int pskb_trim_rcsum (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static int ip_frag_queue(struct ipq *qp, struct sk_buff *skb)
{
 struct sk_buff *prev, *next;
 struct net_device *dev;
 int flags, offset;
 int ihl, end;
 int err = -ENOENT;

 if (qp->q.last_in & INET_FRAG_COMPLETE)
  goto err;

 if (!(IPCB(skb)->flags & IPSKB_FRAG_COMPLETE) &&
     unlikely(ip_frag_too_far(qp)) &&
     unlikely(err = ip_frag_reinit(qp))) {
  ipq_kill(qp);
  goto err;
 }

 offset = ntohs(ip_hdr(skb)->frag_off);
 flags = offset & ~IP_OFFSET;
 offset &= IP_OFFSET;
 offset <<= 3;
 ihl = ip_hdrlen(skb);


 end = offset + skb->len - ihl;
 err = -EINVAL;


 if ((flags & IP_MF) == 0) {



  if (end < qp->q.len ||
      ((qp->q.last_in & INET_FRAG_LAST_IN) && end != qp->q.len))
   goto err;
  qp->q.last_in |= INET_FRAG_LAST_IN;
  qp->q.len = end;
 } else {
  if (end&7) {
   end &= ~7;
   if (skb->ip_summed != CHECKSUM_UNNECESSARY)
    skb->ip_summed = CHECKSUM_NONE;
  }
  if (end > qp->q.len) {

   if (qp->q.last_in & INET_FRAG_LAST_IN)
    goto err;
   qp->q.len = end;
  }
 }
 if (end == offset)
  goto err;

 err = -ENOMEM;
 if (pskb_pull(skb, ihl) == ((void*)0))
  goto err;

 err = pskb_trim_rcsum(skb, end - offset);
 if (err)
  goto err;





 prev = ((void*)0);
 for (next = qp->q.fragments; next != ((void*)0); next = next->next) {
  if (FRAG_CB(next)->offset >= offset)
   break;
  prev = next;
 }





 if (prev) {
  int i = (FRAG_CB(prev)->offset + prev->len) - offset;

  if (i > 0) {
   offset += i;
   err = -EINVAL;
   if (end <= offset)
    goto err;
   err = -ENOMEM;
   if (!pskb_pull(skb, i))
    goto err;
   if (skb->ip_summed != CHECKSUM_UNNECESSARY)
    skb->ip_summed = CHECKSUM_NONE;
  }
 }

 err = -ENOMEM;

 while (next && FRAG_CB(next)->offset < end) {
  int i = end - FRAG_CB(next)->offset;

  if (i < next->len) {



   if (!pskb_pull(next, i))
    goto err;
   FRAG_CB(next)->offset += i;
   qp->q.meat -= i;
   if (next->ip_summed != CHECKSUM_UNNECESSARY)
    next->ip_summed = CHECKSUM_NONE;
   break;
  } else {
   struct sk_buff *free_it = next;




   next = next->next;

   if (prev)
    prev->next = next;
   else
    qp->q.fragments = next;

   qp->q.meat -= free_it->len;
   frag_kfree_skb(qp->q.net, free_it, ((void*)0));
  }
 }

 FRAG_CB(skb)->offset = offset;


 skb->next = next;
 if (prev)
  prev->next = skb;
 else
  qp->q.fragments = skb;

 dev = skb->dev;
 if (dev) {
  qp->iif = dev->ifindex;
  skb->dev = ((void*)0);
 }
 qp->q.stamp = skb->tstamp;
 qp->q.meat += skb->len;
 atomic_add(skb->truesize, &qp->q.net->mem);
 if (offset == 0)
  qp->q.last_in |= INET_FRAG_FIRST_IN;

 if (ip_hdr(skb)->frag_off & htons(IP_DF) &&
     skb->len + ihl > qp->q.max_size)
  qp->q.max_size = skb->len + ihl;

 if (qp->q.last_in == (INET_FRAG_FIRST_IN | INET_FRAG_LAST_IN) &&
     qp->q.meat == qp->q.len)
  return ip_frag_reasm(qp, prev, dev);

 write_lock(&ip4_frags.lock);
 list_move_tail(&qp->q.lru_list, &qp->q.net->lru_list);
 write_unlock(&ip4_frags.lock);
 return -EINPROGRESS;

err:
 kfree_skb(skb);
 return err;
}
