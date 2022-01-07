
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_policy_afinfo {int dummy; } ;
struct TYPE_2__ {int * ops; } ;
struct xfrm_dst {TYPE_1__ flo; } ;
struct dst_ops {int dummy; } ;
struct net {struct dst_ops xfrm6_dst_ops; struct dst_ops xfrm4_dst_ops; } ;




 int BUG () ;
 int EINVAL ;
 int ENOBUFS ;
 struct xfrm_dst* ERR_PTR (int ) ;
 struct xfrm_dst* dst_alloc (struct dst_ops*) ;
 scalar_t__ likely (struct xfrm_dst*) ;
 int xfrm_bundle_fc_ops ;
 struct xfrm_policy_afinfo* xfrm_policy_get_afinfo (int) ;
 int xfrm_policy_put_afinfo (struct xfrm_policy_afinfo*) ;

__attribute__((used)) static inline struct xfrm_dst *xfrm_alloc_dst(struct net *net, int family)
{
 struct xfrm_policy_afinfo *afinfo = xfrm_policy_get_afinfo(family);
 struct dst_ops *dst_ops;
 struct xfrm_dst *xdst;

 if (!afinfo)
  return ERR_PTR(-EINVAL);

 switch (family) {
 case 129:
  dst_ops = &net->xfrm4_dst_ops;
  break;





 default:
  BUG();
 }
 xdst = dst_alloc(dst_ops);
 xfrm_policy_put_afinfo(afinfo);

 if (likely(xdst))
  xdst->flo.ops = &xfrm_bundle_fc_ops;
 else
  xdst = ERR_PTR(-ENOBUFS);

 return xdst;
}
