
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dummy; } ;


 int IPV6_ADDR_LINKLOCAL ;
 int IPV6_ADDR_LOOPBACK ;
 int IPV6_ADDR_MULTICAST ;
 int ipv6_addr_type (struct in6_addr*) ;

__attribute__((used)) static inline int rt6_need_strict(struct in6_addr *daddr)
{
 return (ipv6_addr_type(daddr) &
  (IPV6_ADDR_MULTICAST | IPV6_ADDR_LINKLOCAL | IPV6_ADDR_LOOPBACK));
}
