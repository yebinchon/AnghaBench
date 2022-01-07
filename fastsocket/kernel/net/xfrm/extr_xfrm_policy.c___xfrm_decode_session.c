
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_policy_afinfo {int (* decode_session ) (struct sk_buff*,struct flowi*,int) ;} ;
struct sk_buff {int dummy; } ;
struct flowi {int secid; } ;


 int EAFNOSUPPORT ;
 int security_xfrm_decode_session (struct sk_buff*,int *) ;
 int stub1 (struct sk_buff*,struct flowi*,int) ;
 scalar_t__ unlikely (int ) ;
 struct xfrm_policy_afinfo* xfrm_policy_get_afinfo (unsigned int) ;
 int xfrm_policy_put_afinfo (struct xfrm_policy_afinfo*) ;

int __xfrm_decode_session(struct sk_buff *skb, struct flowi *fl,
     unsigned int family, int reverse)
{
 struct xfrm_policy_afinfo *afinfo = xfrm_policy_get_afinfo(family);
 int err;

 if (unlikely(afinfo == ((void*)0)))
  return -EAFNOSUPPORT;

 afinfo->decode_session(skb, fl, reverse);
 err = security_xfrm_decode_session(skb, &fl->secid);
 xfrm_policy_put_afinfo(afinfo);
 return err;
}
