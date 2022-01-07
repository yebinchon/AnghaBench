
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zone {TYPE_1__* zone_pgdat; } ;
struct mem_cgroup_reclaim_cookie {int priority; struct zone* zone; } ;
struct mem_cgroup {int res; int stat; } ;
typedef int gfp_t ;
struct TYPE_2__ {int node_id; } ;


 int MEM_CGROUP_MAX_RECLAIM_LOOPS ;
 int get_swappiness (struct mem_cgroup*) ;
 unsigned long mem_cgroup_get_excess (struct mem_cgroup*) ;
 struct mem_cgroup* mem_cgroup_iter (struct mem_cgroup*,struct mem_cgroup*,struct mem_cgroup_reclaim_cookie*) ;
 int mem_cgroup_iter_break (struct mem_cgroup*,struct mem_cgroup*) ;
 int mem_cgroup_local_usage (int *) ;
 scalar_t__ mem_cgroup_shrink_node_zone (struct mem_cgroup*,int ,int,int ,struct zone*,int ) ;
 scalar_t__ res_counter_check_under_soft_limit (int *) ;

__attribute__((used)) static int mem_cgroup_soft_reclaim(struct mem_cgroup *root_mem,
       struct zone *zone,
       gfp_t gfp_mask)
{
 struct mem_cgroup *victim = ((void*)0);
 int total = 0;
 int loop = 0;
 unsigned long excess = mem_cgroup_get_excess(root_mem);
 struct mem_cgroup_reclaim_cookie reclaim = {
  .zone = zone,
  .priority = 0,
 };

 while (1) {
  victim = mem_cgroup_iter(root_mem, victim, &reclaim);
  if (!victim) {
   loop++;
   if (loop >= 2) {





    if (!total)
     break;






    if (total >= (excess >> 2) ||
     (loop > MEM_CGROUP_MAX_RECLAIM_LOOPS))
     break;
   }
   continue;
  }
  if (!mem_cgroup_local_usage(&victim->stat)) {

   continue;
  }

  total += mem_cgroup_shrink_node_zone(victim, gfp_mask, 0,
      get_swappiness(victim), zone,
      zone->zone_pgdat->node_id);
  if (res_counter_check_under_soft_limit(&root_mem->res))
   break;
 }
 mem_cgroup_iter_break(root_mem, victim);
 return total;
}
