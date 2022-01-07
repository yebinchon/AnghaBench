
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct unix_domain {int dummy; } ;
struct net {int dummy; } ;
struct ip_map {int dummy; } ;


 int __ip_map_update (int *,struct ip_map*,struct unix_domain*,int ) ;
 int ip_map_cache ;

__attribute__((used)) static inline int ip_map_update(struct net *net, struct ip_map *ipm,
  struct unix_domain *udom, time_t expiry)
{
 return __ip_map_update(&ip_map_cache, ipm, udom, expiry);
}
