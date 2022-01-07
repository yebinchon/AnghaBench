
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net {int dummy; } ;
struct ip_map {scalar_t__ m_add_change; int h; TYPE_1__* m_client; } ;
struct in6_addr {int dummy; } ;
struct auth_domain {int ref; } ;
struct TYPE_2__ {scalar_t__ addr_changes; struct auth_domain h; } ;


 scalar_t__ cache_check (int *,int *,int *) ;
 int cache_put (int *,int *) ;
 int ip_map_cache ;
 struct ip_map* ip_map_lookup (struct net*,char*,struct in6_addr*) ;
 int kref_get (int *) ;
 int sunrpc_invalidate (int *,int *) ;

struct auth_domain *auth_unix_lookup(struct net *net, struct in6_addr *addr)
{
 struct ip_map *ipm;
 struct auth_domain *rv;

 ipm = ip_map_lookup(net, "nfsd", addr);

 if (!ipm)
  return ((void*)0);
 if (cache_check(&ip_map_cache, &ipm->h, ((void*)0)))
  return ((void*)0);

 if ((ipm->m_client->addr_changes - ipm->m_add_change) >0) {
  sunrpc_invalidate(&ipm->h, &ip_map_cache);
  rv = ((void*)0);
 } else {
  rv = &ipm->m_client->h;
  kref_get(&rv->ref);
 }
 cache_put(&ipm->h, &ip_map_cache);
 return rv;
}
