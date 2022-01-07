
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {scalar_t__ memsw_is_minimum; } ;
typedef int gfp_t ;


 int MEM_CGROUP_MAX_RECLAIM_LOOPS ;
 unsigned long MEM_CGROUP_RECLAIM_NOSWAP ;
 unsigned long MEM_CGROUP_RECLAIM_SHRINK ;
 int drain_all_stock_async () ;
 int get_swappiness (struct mem_cgroup*) ;
 scalar_t__ mem_cgroup_check_under_limit (struct mem_cgroup*) ;
 scalar_t__ try_to_free_mem_cgroup_pages (struct mem_cgroup*,int ,int,int ) ;

__attribute__((used)) static unsigned long mem_cgroup_reclaim(struct mem_cgroup *memcg,
     gfp_t gfp_mask,
     unsigned long flags)
{
 unsigned long total = 0;
 bool noswap = 0;
 int loop;

 if (flags & MEM_CGROUP_RECLAIM_NOSWAP)
  noswap = 1;
 if (!(flags & MEM_CGROUP_RECLAIM_SHRINK) && memcg->memsw_is_minimum)
  noswap = 1;

 for (loop = 0; loop < MEM_CGROUP_MAX_RECLAIM_LOOPS; loop++) {
  if (loop)
   drain_all_stock_async();
  total += try_to_free_mem_cgroup_pages(memcg, gfp_mask, noswap,
            get_swappiness(memcg));





  if (total && (flags & MEM_CGROUP_RECLAIM_SHRINK))
   break;
  if (mem_cgroup_check_under_limit(memcg))
   break;




  if (loop && !total)
   break;
 }
 return total;
}
