
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; } ;
struct in6_addr {int dummy; } ;


 int IFF_LOOPBACK ;
 int IFF_NOARP ;
 int addrconf_addr_solict_mult (struct in6_addr*,struct in6_addr*) ;
 int ipv6_dev_mc_inc (struct net_device*,struct in6_addr*) ;

void addrconf_join_solict(struct net_device *dev, struct in6_addr *addr)
{
 struct in6_addr maddr;

 if (dev->flags&(IFF_LOOPBACK|IFF_NOARP))
  return;

 addrconf_addr_solict_mult(addr, &maddr);
 ipv6_dev_mc_inc(dev, &maddr);
}
