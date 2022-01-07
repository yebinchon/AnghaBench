
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_policy {int dummy; } ;
struct sk_buff {int dummy; } ;


 int ENOBUFS ;
 struct sk_buff* ERR_PTR (int ) ;
 int GFP_ATOMIC ;
 struct sk_buff* alloc_skb (int,int ) ;
 int pfkey_xfrm_policy2msg_size (struct xfrm_policy*) ;

__attribute__((used)) static struct sk_buff * pfkey_xfrm_policy2msg_prep(struct xfrm_policy *xp)
{
 struct sk_buff *skb;
 int size;

 size = pfkey_xfrm_policy2msg_size(xp);

 skb = alloc_skb(size + 16, GFP_ATOMIC);
 if (skb == ((void*)0))
  return ERR_PTR(-ENOBUFS);

 return skb;
}
