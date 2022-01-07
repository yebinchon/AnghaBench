
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xfrm_state {TYPE_1__* security; } ;
struct sk_buff {int dummy; } ;
struct dst_entry {struct xfrm_state* xfrm; } ;
struct TYPE_2__ {int ctx_sid; } ;


 int SECSID_NULL ;
 int selinux_authorizable_xfrm (struct xfrm_state*) ;
 struct dst_entry* skb_dst (struct sk_buff*) ;

__attribute__((used)) static u32 selinux_xfrm_skb_sid_egress(struct sk_buff *skb)
{
 struct dst_entry *dst = skb_dst(skb);
 struct xfrm_state *x;

 if (dst == ((void*)0))
  return SECSID_NULL;
 x = dst->xfrm;
 if (x == ((void*)0) || !selinux_authorizable_xfrm(x))
  return SECSID_NULL;

 return x->security->ctx_sid;
}
