
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfrm_address_t ;
struct xfrm_policy_afinfo {int (* get_saddr ) (struct net*,int *,int *) ;} ;
struct net {int dummy; } ;


 int EINVAL ;
 int stub1 (struct net*,int *,int *) ;
 scalar_t__ unlikely (int ) ;
 struct xfrm_policy_afinfo* xfrm_policy_get_afinfo (unsigned short) ;
 int xfrm_policy_put_afinfo (struct xfrm_policy_afinfo*) ;

__attribute__((used)) static int
xfrm_get_saddr(struct net *net, xfrm_address_t *local, xfrm_address_t *remote,
        unsigned short family)
{
 int err;
 struct xfrm_policy_afinfo *afinfo = xfrm_policy_get_afinfo(family);

 if (unlikely(afinfo == ((void*)0)))
  return -EINVAL;
 err = afinfo->get_saddr(net, local, remote);
 xfrm_policy_put_afinfo(afinfo);
 return err;
}
