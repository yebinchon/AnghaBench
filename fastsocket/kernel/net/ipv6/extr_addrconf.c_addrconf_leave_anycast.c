
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet6_ifaddr {int idev; int prefix_len; int addr; } ;
struct in6_addr {int dummy; } ;


 int __ipv6_dev_ac_dec (int ,struct in6_addr*) ;
 scalar_t__ ipv6_addr_any (struct in6_addr*) ;
 int ipv6_addr_prefix (struct in6_addr*,int *,int ) ;

__attribute__((used)) static void addrconf_leave_anycast(struct inet6_ifaddr *ifp)
{
 struct in6_addr addr;
 ipv6_addr_prefix(&addr, &ifp->addr, ifp->prefix_len);
 if (ipv6_addr_any(&addr))
  return;
 __ipv6_dev_ac_dec(ifp->idev, &addr);
}
