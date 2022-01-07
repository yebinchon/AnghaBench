
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shrinker {int dummy; } ;
typedef int gfp_t ;


 int GFP_KERNEL ;
 int LIST_HEAD (int ) ;
 int cred_unused ;
 int free ;
 scalar_t__ list_empty (int *) ;
 int rpc_credcache_lock ;
 int rpcauth_destroy_credlist (int *) ;
 int rpcauth_prune_expired (int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
rpcauth_cache_shrinker(struct shrinker *shrink, int nr_to_scan, gfp_t gfp_mask)
{
 LIST_HEAD(free);
 int res;

 if ((gfp_mask & GFP_KERNEL) != GFP_KERNEL)
  return (nr_to_scan == 0) ? 0 : -1;
 if (list_empty(&cred_unused))
  return 0;
 spin_lock(&rpc_credcache_lock);
 res = rpcauth_prune_expired(&free, nr_to_scan);
 spin_unlock(&rpc_credcache_lock);
 rpcauth_destroy_credlist(&free);
 return res;
}
