
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int family; } ;
struct xfrm_userpolicy_info {int dir; TYPE_1__ sel; } ;
struct xfrm_user_tmpl {int dummy; } ;
struct xfrm_policy {int type; } ;
struct sock {int sk_family; } ;
struct net {int dummy; } ;




 int EINVAL ;
 int ENOBUFS ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int IPV6_XFRM_POLICY ;
 int IP_XFRM_POLICY ;
 int XFRM_POLICY_OUT ;
 int XFRM_POLICY_TYPE_MAIN ;
 int copy_from_user_policy (struct xfrm_policy*,struct xfrm_userpolicy_info*) ;
 int copy_templates (struct xfrm_policy*,struct xfrm_user_tmpl*,int) ;
 struct net* sock_net (struct sock*) ;
 scalar_t__ validate_tmpl (int,struct xfrm_user_tmpl*,int ) ;
 scalar_t__ verify_newpolicy_info (struct xfrm_userpolicy_info*) ;
 struct xfrm_policy* xfrm_policy_alloc (struct net*,int ) ;

__attribute__((used)) static struct xfrm_policy *xfrm_compile_policy(struct sock *sk, int opt,
            u8 *data, int len, int *dir)
{
 struct net *net = sock_net(sk);
 struct xfrm_userpolicy_info *p = (struct xfrm_userpolicy_info *)data;
 struct xfrm_user_tmpl *ut = (struct xfrm_user_tmpl *) (p + 1);
 struct xfrm_policy *xp;
 int nr;

 switch (sk->sk_family) {
 case 129:
  if (opt != IP_XFRM_POLICY) {
   *dir = -EOPNOTSUPP;
   return ((void*)0);
  }
  break;
 default:
  *dir = -EINVAL;
  return ((void*)0);
 }

 *dir = -EINVAL;

 if (len < sizeof(*p) ||
     verify_newpolicy_info(p))
  return ((void*)0);

 nr = ((len - sizeof(*p)) / sizeof(*ut));
 if (validate_tmpl(nr, ut, p->sel.family))
  return ((void*)0);

 if (p->dir > XFRM_POLICY_OUT)
  return ((void*)0);

 xp = xfrm_policy_alloc(net, GFP_KERNEL);
 if (xp == ((void*)0)) {
  *dir = -ENOBUFS;
  return ((void*)0);
 }

 copy_from_user_policy(xp, p);
 xp->type = XFRM_POLICY_TYPE_MAIN;
 copy_templates(xp, ut, nr);

 *dir = p->dir;

 return xp;
}
