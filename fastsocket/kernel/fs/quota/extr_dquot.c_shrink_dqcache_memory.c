
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct shrinker {int dummy; } ;
typedef int gfp_t ;
struct TYPE_2__ {int free_dquots; } ;


 int dq_list_lock ;
 TYPE_1__ dqstats ;
 int prune_dqcache (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sysctl_vfs_cache_pressure ;

__attribute__((used)) static int shrink_dqcache_memory(struct shrinker *shrink, int nr, gfp_t gfp_mask)
{
 if (nr) {
  spin_lock(&dq_list_lock);
  prune_dqcache(nr);
  spin_unlock(&dq_list_lock);
 }
 return (dqstats.free_dquots / 100) * sysctl_vfs_cache_pressure;
}
