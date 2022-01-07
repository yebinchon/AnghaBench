
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shrinker {int dummy; } ;
typedef int gfp_t ;


 int cache_lock ;
 unsigned int num_drc_entries ;
 int prune_cache_entries () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
nfsd_reply_cache_shrink(struct shrinker *shrink, int nr_to_scan,
   gfp_t gfp_mask)
{
 unsigned int num;

 spin_lock(&cache_lock);
 if (nr_to_scan)
  prune_cache_entries();
 num = num_drc_entries;
 spin_unlock(&cache_lock);

 return num;
}
