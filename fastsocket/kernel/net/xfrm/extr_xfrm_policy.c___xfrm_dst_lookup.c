
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfrm_address_t ;
struct xfrm_policy_afinfo {struct dst_entry* (* dst_lookup ) (struct net*,int,int *,int *) ;} ;
struct net {int dummy; } ;
struct dst_entry {int dummy; } ;


 int EAFNOSUPPORT ;
 struct dst_entry* ERR_PTR (int ) ;
 struct dst_entry* stub1 (struct net*,int,int *,int *) ;
 scalar_t__ unlikely (int ) ;
 struct xfrm_policy_afinfo* xfrm_policy_get_afinfo (int) ;
 int xfrm_policy_put_afinfo (struct xfrm_policy_afinfo*) ;

__attribute__((used)) static inline struct dst_entry *__xfrm_dst_lookup(struct net *net, int tos,
        xfrm_address_t *saddr,
        xfrm_address_t *daddr,
        int family)
{
 struct xfrm_policy_afinfo *afinfo;
 struct dst_entry *dst;

 afinfo = xfrm_policy_get_afinfo(family);
 if (unlikely(afinfo == ((void*)0)))
  return ERR_PTR(-EAFNOSUPPORT);

 dst = afinfo->dst_lookup(net, tos, saddr, daddr);

 xfrm_policy_put_afinfo(afinfo);

 return dst;
}
