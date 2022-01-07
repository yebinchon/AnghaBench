
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dummy; } ;
struct rt6key {int plen; struct in6_addr addr; } ;


 int ipv6_addr_equal (struct in6_addr*,struct in6_addr*) ;

__attribute__((used)) static inline int ip6_rt_check(struct rt6key *rt_key,
          struct in6_addr *fl_addr,
          struct in6_addr *addr_cache)
{
 return ((rt_key->plen != 128 || !ipv6_addr_equal(fl_addr, &rt_key->addr)) &&
  (addr_cache == ((void*)0) || !ipv6_addr_equal(fl_addr, addr_cache)));
}
