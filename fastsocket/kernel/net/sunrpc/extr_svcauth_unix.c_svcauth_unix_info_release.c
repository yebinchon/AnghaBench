
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_xprt {struct ip_map* xpt_auth_cache; } ;
struct ip_map {int h; } ;


 int cache_put (int *,int *) ;
 int ip_map_cache ;

void
svcauth_unix_info_release(struct svc_xprt *xpt)
{
 struct ip_map *ipm;

 ipm = xpt->xpt_auth_cache;
 if (ipm != ((void*)0))
  cache_put(&ipm->h, &ip_map_cache);
}
