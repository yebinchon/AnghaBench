
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct shrinker {int dummy; } ;
typedef int gfp_t ;
struct TYPE_2__ {int nr_unused; } ;


 int __GFP_FS ;
 TYPE_1__ inodes_stat ;
 int prune_icache (int) ;
 int sysctl_vfs_cache_pressure ;

__attribute__((used)) static int shrink_icache_memory(struct shrinker *shrink, int nr, gfp_t gfp_mask)
{
 if (nr) {





  if (!(gfp_mask & __GFP_FS))
   return -1;
  prune_icache(nr);
 }
 return (inodes_stat.nr_unused / 100) * sysctl_vfs_cache_pressure;
}
