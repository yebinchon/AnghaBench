
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inet6_ifaddr {TYPE_1__* idev; int prefix_len; int addr; } ;
struct in6_addr {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ ipv6_addr_any (struct in6_addr*) ;
 int ipv6_addr_prefix (struct in6_addr*,int *,int ) ;
 int ipv6_dev_ac_inc (int ,struct in6_addr*) ;

__attribute__((used)) static void addrconf_join_anycast(struct inet6_ifaddr *ifp)
{
 struct in6_addr addr;
 ipv6_addr_prefix(&addr, &ifp->addr, ifp->prefix_len);
 if (ipv6_addr_any(&addr))
  return;
 ipv6_dev_ac_inc(ifp->idev->dev, &addr);
}
