
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct zone {int dummy; } ;
struct mem_cgroup_tree_per_zone {int lock; } ;
struct mem_cgroup_per_zone {TYPE_1__* mem; } ;
typedef int gfp_t ;
struct TYPE_4__ {int css; int res; } ;


 int MEM_CGROUP_MAX_SOFT_LIMIT_RECLAIM_LOOPS ;
 int __mem_cgroup_insert_exceeded (TYPE_1__*,struct mem_cgroup_per_zone*,struct mem_cgroup_tree_per_zone*,unsigned long long) ;
 struct mem_cgroup_per_zone* __mem_cgroup_largest_soft_limit_node (struct mem_cgroup_tree_per_zone*) ;
 int __mem_cgroup_remove_exceeded (TYPE_1__*,struct mem_cgroup_per_zone*,struct mem_cgroup_tree_per_zone*) ;
 int css_put (int *) ;
 struct mem_cgroup_per_zone* mem_cgroup_largest_soft_limit_node (struct mem_cgroup_tree_per_zone*) ;
 unsigned long mem_cgroup_soft_reclaim (TYPE_1__*,struct zone*,int ) ;
 unsigned long long res_counter_soft_limit_excess (int *) ;
 struct mem_cgroup_tree_per_zone* soft_limit_tree_node_zone (int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

unsigned long mem_cgroup_soft_limit_reclaim(struct zone *zone, int order,
      gfp_t gfp_mask, int nid,
      int zid)
{
 unsigned long nr_reclaimed = 0;
 struct mem_cgroup_per_zone *mz, *next_mz = ((void*)0);
 unsigned long reclaimed;
 int loop = 0;
 struct mem_cgroup_tree_per_zone *mctz;
 unsigned long long excess;

 if (order > 0)
  return 0;

 mctz = soft_limit_tree_node_zone(nid, zid);





 do {
  if (next_mz)
   mz = next_mz;
  else
   mz = mem_cgroup_largest_soft_limit_node(mctz);
  if (!mz)
   break;

  reclaimed = mem_cgroup_soft_reclaim(mz->mem, zone, gfp_mask);
  nr_reclaimed += reclaimed;
  spin_lock(&mctz->lock);





  next_mz = ((void*)0);
  if (!reclaimed) {
   do {
    next_mz =
    __mem_cgroup_largest_soft_limit_node(mctz);
    if (next_mz == mz) {
     css_put(&next_mz->mem->css);
     next_mz = ((void*)0);
    } else
     break;
   } while (1);
  }
  __mem_cgroup_remove_exceeded(mz->mem, mz, mctz);
  excess = res_counter_soft_limit_excess(&mz->mem->res);
  __mem_cgroup_insert_exceeded(mz->mem, mz, mctz, excess);
  spin_unlock(&mctz->lock);
  css_put(&mz->mem->css);
  loop++;





  if (!nr_reclaimed &&
   (next_mz == ((void*)0) ||
   loop > MEM_CGROUP_MAX_SOFT_LIMIT_RECLAIM_LOOPS))
   break;
 } while (!nr_reclaimed);
 if (next_mz)
  css_put(&next_mz->mem->css);
 return nr_reclaimed;
}
