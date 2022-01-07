
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_11__ {scalar_t__* metrics; } ;
struct TYPE_10__ {TYPE_4__ dst; } ;
struct rt6_info {int rt6i_flags; TYPE_3__ u; int rt6i_nexthop; } ;
struct net_device {int ifindex; } ;
struct TYPE_8__ {int ip6_rt_mtu_expires; } ;
struct TYPE_9__ {TYPE_1__ sysctl; } ;
struct net {TYPE_2__ ipv6; } ;
struct in6_addr {int dummy; } ;


 scalar_t__ IPV6_MIN_MTU ;
 int RTAX_FEATURES ;
 scalar_t__ RTAX_FEATURE_ALLFRAG ;
 int RTAX_MTU ;
 int RTF_CACHE ;
 int RTF_DYNAMIC ;
 int RTF_EXPIRES ;
 int RTF_MODIFIED ;
 int RTF_NONEXTHOP ;
 struct net* dev_net (struct net_device*) ;
 int dst_confirm (TYPE_4__*) ;
 scalar_t__ dst_mtu (TYPE_4__*) ;
 int dst_release (TYPE_4__*) ;
 int dst_set_expires (TYPE_4__*,int ) ;
 int ip6_ins_rt (struct rt6_info*) ;
 struct rt6_info* rt6_alloc_clone (struct rt6_info*,struct in6_addr*) ;
 struct rt6_info* rt6_alloc_cow (struct rt6_info*,struct in6_addr*,struct in6_addr*) ;
 struct rt6_info* rt6_lookup (struct net*,struct in6_addr*,struct in6_addr*,int ,int ) ;

void rt6_pmtu_discovery(struct in6_addr *daddr, struct in6_addr *saddr,
   struct net_device *dev, u32 pmtu)
{
 struct rt6_info *rt, *nrt;
 struct net *net = dev_net(dev);
 int allfrag = 0;

 rt = rt6_lookup(net, daddr, saddr, dev->ifindex, 0);
 if (rt == ((void*)0))
  return;

 if (pmtu >= dst_mtu(&rt->u.dst))
  goto out;

 if (pmtu < IPV6_MIN_MTU) {






  pmtu = IPV6_MIN_MTU;
  allfrag = 1;
 }





 dst_confirm(&rt->u.dst);






 if (rt->rt6i_flags & RTF_CACHE) {
  rt->u.dst.metrics[RTAX_MTU-1] = pmtu;
  if (allfrag)
   rt->u.dst.metrics[RTAX_FEATURES-1] |= RTAX_FEATURE_ALLFRAG;
  dst_set_expires(&rt->u.dst, net->ipv6.sysctl.ip6_rt_mtu_expires);
  rt->rt6i_flags |= RTF_MODIFIED|RTF_EXPIRES;
  goto out;
 }






 if (!rt->rt6i_nexthop && !(rt->rt6i_flags & RTF_NONEXTHOP))
  nrt = rt6_alloc_cow(rt, daddr, saddr);
 else
  nrt = rt6_alloc_clone(rt, daddr);

 if (nrt) {
  nrt->u.dst.metrics[RTAX_MTU-1] = pmtu;
  if (allfrag)
   nrt->u.dst.metrics[RTAX_FEATURES-1] |= RTAX_FEATURE_ALLFRAG;







  dst_set_expires(&nrt->u.dst, net->ipv6.sysctl.ip6_rt_mtu_expires);
  nrt->rt6i_flags |= RTF_DYNAMIC|RTF_EXPIRES;

  ip6_ins_rt(nrt);
 }
out:
 dst_release(&rt->u.dst);
}
