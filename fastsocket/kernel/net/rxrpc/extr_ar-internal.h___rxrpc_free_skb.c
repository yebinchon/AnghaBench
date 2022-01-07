
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int users; } ;


 int CHECK_SLAB_OKAY (int *) ;
 int kfree_skb (struct sk_buff*) ;

__attribute__((used)) static inline void __rxrpc_free_skb(struct sk_buff *skb, const char *fn)
{
 if (skb) {
  CHECK_SLAB_OKAY(&skb->users);



  kfree_skb(skb);
 }
}
