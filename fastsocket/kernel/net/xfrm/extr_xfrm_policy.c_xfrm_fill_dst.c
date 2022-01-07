
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xfrm_policy_afinfo {int (* fill_dst ) (struct xfrm_dst*,struct net_device*,struct flowi*) ;} ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_6__ {TYPE_2__ dst; } ;
struct xfrm_dst {TYPE_3__ u; } ;
struct net_device {int dummy; } ;
struct flowi {int dummy; } ;
struct TYPE_4__ {int family; } ;


 int EINVAL ;
 int stub1 (struct xfrm_dst*,struct net_device*,struct flowi*) ;
 struct xfrm_policy_afinfo* xfrm_policy_get_afinfo (int ) ;
 int xfrm_policy_put_afinfo (struct xfrm_policy_afinfo*) ;

__attribute__((used)) static inline int xfrm_fill_dst(struct xfrm_dst *xdst, struct net_device *dev,
    struct flowi *fl)
{
 struct xfrm_policy_afinfo *afinfo =
  xfrm_policy_get_afinfo(xdst->u.dst.ops->family);
 int err;

 if (!afinfo)
  return -EINVAL;

 err = afinfo->fill_dst(xdst, dev, fl);

 xfrm_policy_put_afinfo(afinfo);

 return err;
}
