
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct ip_map {int dummy; } ;
struct in6_addr {int dummy; } ;


 struct ip_map* __ip_map_lookup (int *,char*,struct in6_addr*) ;
 int ip_map_cache ;

__attribute__((used)) static inline struct ip_map *ip_map_lookup(struct net *net, char *class,
  struct in6_addr *addr)
{
 return __ip_map_lookup(&ip_map_cache, class, addr);
}
