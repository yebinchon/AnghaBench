
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ truesize; } ;
struct netns_frags {int mem; } ;
struct inet_frags {int (* skb_free ) (struct sk_buff*) ;} ;


 int atomic_sub (scalar_t__,int *) ;
 int kfree_skb (struct sk_buff*) ;
 int stub1 (struct sk_buff*) ;

__attribute__((used)) static inline void frag_kfree_skb(struct netns_frags *nf, struct inet_frags *f,
  struct sk_buff *skb, int *work)
{
 if (work)
  *work -= skb->truesize;

 atomic_sub(skb->truesize, &nf->mem);
 if (f->skb_free)
  f->skb_free(skb);
 kfree_skb(skb);
}
