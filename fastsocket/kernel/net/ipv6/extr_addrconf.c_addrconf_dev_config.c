
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ type; } ;
struct inet6_dev {int dummy; } ;
struct in6_addr {scalar_t__ s6_addr; int * s6_addr32; } ;


 scalar_t__ ARPHRD_ARCNET ;
 scalar_t__ ARPHRD_ETHER ;
 scalar_t__ ARPHRD_FDDI ;
 scalar_t__ ARPHRD_IEEE802_TR ;
 scalar_t__ ARPHRD_INFINIBAND ;
 int ASSERT_RTNL () ;
 struct inet6_dev* addrconf_add_dev (struct net_device*) ;
 int addrconf_add_linklocal (struct inet6_dev*,struct in6_addr*) ;
 int htonl (int) ;
 scalar_t__ ipv6_generate_eui64 (scalar_t__,struct net_device*) ;
 int memset (struct in6_addr*,int ,int) ;

__attribute__((used)) static void addrconf_dev_config(struct net_device *dev)
{
 struct in6_addr addr;
 struct inet6_dev * idev;

 ASSERT_RTNL();

 if ((dev->type != ARPHRD_ETHER) &&
     (dev->type != ARPHRD_FDDI) &&
     (dev->type != ARPHRD_IEEE802_TR) &&
     (dev->type != ARPHRD_ARCNET) &&
     (dev->type != ARPHRD_INFINIBAND)) {

  return;
 }

 idev = addrconf_add_dev(dev);
 if (idev == ((void*)0))
  return;

 memset(&addr, 0, sizeof(struct in6_addr));
 addr.s6_addr32[0] = htonl(0xFE800000);

 if (ipv6_generate_eui64(addr.s6_addr + 8, dev) == 0)
  addrconf_add_linklocal(idev, &addr);
}
