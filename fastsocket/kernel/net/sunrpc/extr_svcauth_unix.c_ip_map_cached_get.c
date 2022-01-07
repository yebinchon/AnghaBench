
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_xprt {int xpt_lock; struct ip_map* xpt_auth_cache; int xpt_flags; } ;
struct ip_map {int h; } ;


 int XPT_CACHE_AUTH ;
 int cache_get (int *) ;
 int cache_put (int *,int *) ;
 int cache_valid (int *) ;
 int ip_map_cache ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline struct ip_map *
ip_map_cached_get(struct svc_xprt *xprt)
{
 struct ip_map *ipm = ((void*)0);

 if (test_bit(XPT_CACHE_AUTH, &xprt->xpt_flags)) {
  spin_lock(&xprt->xpt_lock);
  ipm = xprt->xpt_auth_cache;
  if (ipm != ((void*)0)) {
   if (!cache_valid(&ipm->h)) {





    xprt->xpt_auth_cache = ((void*)0);
    spin_unlock(&xprt->xpt_lock);
    cache_put(&ipm->h, &ip_map_cache);
    return ((void*)0);
   }
   cache_get(&ipm->h);
  }
  spin_unlock(&xprt->xpt_lock);
 }
 return ipm;
}
