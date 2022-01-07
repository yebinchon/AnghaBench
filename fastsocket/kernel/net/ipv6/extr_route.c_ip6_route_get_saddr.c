
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; scalar_t__ plen; } ;
struct rt6_info {TYPE_1__ rt6i_prefsrc; } ;
struct net {int dummy; } ;
struct inet6_dev {int * dev; } ;
struct in6_addr {int dummy; } ;
struct dst_entry {int dummy; } ;


 struct inet6_dev* ip6_dst_idev (struct dst_entry*) ;
 int ipv6_addr_copy (struct in6_addr*,int *) ;
 int ipv6_dev_get_saddr (struct net*,int *,struct in6_addr*,unsigned int,struct in6_addr*) ;

int ip6_route_get_saddr(struct net *net,
   struct rt6_info *rt,
   struct in6_addr *daddr,
   unsigned int prefs,
   struct in6_addr *saddr)
{
 struct inet6_dev *idev = ip6_dst_idev((struct dst_entry*)rt);
 int err = 0;
 if (rt->rt6i_prefsrc.plen)
  ipv6_addr_copy(saddr, &rt->rt6i_prefsrc.addr);
 else
  err = ipv6_dev_get_saddr(net, idev ? idev->dev : ((void*)0),
      daddr, prefs, saddr);
 return err;
}
