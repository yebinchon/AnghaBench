
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ truesize; } ;
struct netns_frags {int mem; } ;


 int atomic_sub (scalar_t__,int *) ;
 int kfree_skb (struct sk_buff*) ;

__attribute__((used)) static __inline__ void frag_kfree_skb(struct netns_frags *nf,
  struct sk_buff *skb, int *work)
{
 if (work)
  *work -= skb->truesize;
 atomic_sub(skb->truesize, &nf->mem);
 kfree_skb(skb);
}
