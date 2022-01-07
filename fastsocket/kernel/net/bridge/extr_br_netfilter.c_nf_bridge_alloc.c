
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct nf_bridge_info* nf_bridge; } ;
struct nf_bridge_info {int use; } ;


 int GFP_ATOMIC ;
 int atomic_set (int *,int) ;
 struct nf_bridge_info* kzalloc (int,int ) ;
 scalar_t__ likely (struct nf_bridge_info*) ;

__attribute__((used)) static inline struct nf_bridge_info *nf_bridge_alloc(struct sk_buff *skb)
{
 skb->nf_bridge = kzalloc(sizeof(struct nf_bridge_info), GFP_ATOMIC);
 if (likely(skb->nf_bridge))
  atomic_set(&(skb->nf_bridge->use), 1);

 return skb->nf_bridge;
}
