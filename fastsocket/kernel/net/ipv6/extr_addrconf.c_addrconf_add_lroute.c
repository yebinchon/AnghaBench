
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct in6_addr {int dummy; } ;


 int addrconf_prefix_route (struct in6_addr*,int,struct net_device*,int ,int ) ;
 int htonl (int) ;
 int ipv6_addr_set (struct in6_addr*,int ,int ,int ,int ) ;

__attribute__((used)) static void addrconf_add_lroute(struct net_device *dev)
{
 struct in6_addr addr;

 ipv6_addr_set(&addr, htonl(0xFE800000), 0, 0, 0);
 addrconf_prefix_route(&addr, 64, dev, 0, 0);
}
