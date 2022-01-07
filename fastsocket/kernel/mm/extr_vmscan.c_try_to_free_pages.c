
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zonelist {int dummy; } ;
struct scan_control {int may_writepage; int may_unmap; int may_swap; int order; int * nodemask; int * target_mem_cgroup; int swappiness; int nr_to_reclaim; int gfp_mask; } ;
typedef int nodemask_t ;
typedef int gfp_t ;


 int SWAP_CLUSTER_MAX ;
 unsigned long do_try_to_free_pages (struct zonelist*,struct scan_control*) ;
 int laptop_mode ;
 int trace_mm_vmscan_direct_reclaim_begin (int,int,int ) ;
 int trace_mm_vmscan_direct_reclaim_end (unsigned long) ;
 int vm_swappiness ;

unsigned long try_to_free_pages(struct zonelist *zonelist, int order,
    gfp_t gfp_mask, nodemask_t *nodemask)
{
 unsigned long nr_reclaimed;
 struct scan_control sc = {
  .gfp_mask = gfp_mask,
  .may_writepage = !laptop_mode,
  .nr_to_reclaim = SWAP_CLUSTER_MAX,
  .may_unmap = 1,
  .may_swap = 1,
  .swappiness = vm_swappiness,
  .order = order,
  .target_mem_cgroup = ((void*)0),
  .nodemask = nodemask,
 };

 trace_mm_vmscan_direct_reclaim_begin(order,
    sc.may_writepage,
    gfp_mask);

 nr_reclaimed = do_try_to_free_pages(zonelist, &sc);

 trace_mm_vmscan_direct_reclaim_end(nr_reclaimed);

 return nr_reclaimed;
}
