
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_policy_afinfo {int (* get_tos ) (struct flowi*) ;} ;
struct flowi {int dummy; } ;


 int EINVAL ;
 int stub1 (struct flowi*) ;
 struct xfrm_policy_afinfo* xfrm_policy_get_afinfo (int) ;
 int xfrm_policy_put_afinfo (struct xfrm_policy_afinfo*) ;

__attribute__((used)) static inline int xfrm_get_tos(struct flowi *fl, int family)
{
 struct xfrm_policy_afinfo *afinfo = xfrm_policy_get_afinfo(family);
 int tos;

 if (!afinfo)
  return -EINVAL;

 tos = afinfo->get_tos(fl);

 xfrm_policy_put_afinfo(afinfo);

 return tos;
}
