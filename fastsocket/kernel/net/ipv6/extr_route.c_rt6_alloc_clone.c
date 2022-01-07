
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
struct TYPE_6__ {TYPE_2__ dst; } ;
struct TYPE_4__ {int plen; int addr; } ;
struct rt6_info {int rt6i_nexthop; TYPE_3__ u; int rt6i_flags; TYPE_1__ rt6i_dst; } ;
struct in6_addr {int dummy; } ;


 int DST_HOST ;
 int RTF_CACHE ;
 struct rt6_info* ip6_rt_copy (struct rt6_info*) ;
 int ipv6_addr_copy (int *,struct in6_addr*) ;
 int neigh_clone (int ) ;

__attribute__((used)) static struct rt6_info *rt6_alloc_clone(struct rt6_info *ort, struct in6_addr *daddr)
{
 struct rt6_info *rt = ip6_rt_copy(ort);
 if (rt) {
  ipv6_addr_copy(&rt->rt6i_dst.addr, daddr);
  rt->rt6i_dst.plen = 128;
  rt->rt6i_flags |= RTF_CACHE;
  rt->u.dst.flags |= DST_HOST;
  rt->rt6i_nexthop = neigh_clone(ort->rt6i_nexthop);
 }
 return rt;
}
