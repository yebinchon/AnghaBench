
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zonelist {int dummy; } ;
struct zone {int dummy; } ;
struct task_struct {int flags; int comm; } ;
struct page {int dummy; } ;
typedef int nodemask_t ;
typedef int gfp_t ;
typedef enum zone_type { ____Placeholder_zone_type } zone_type ;


 int ALLOC_NO_WATERMARKS ;
 int BLK_RW_ASYNC ;
 int GFP_THISNODE ;
 int HZ ;
 unsigned int MAX_ORDER ;
 scalar_t__ NUMA_BUILD ;
 unsigned int PAGE_ALLOC_COSTLY_ORDER ;
 int PF_EXITING ;
 int PF_MEMALLOC ;
 unsigned int SHOW_MEM_FILTER_NODES ;
 int TIF_MEMDIE ;
 int WARN_ON_ONCE (int) ;
 int __GFP_FS ;
 int __GFP_NOFAIL ;
 int __GFP_NOMEMALLOC ;
 int __GFP_NORETRY ;
 int __GFP_NOWARN ;
 int __GFP_NO_KSWAPD ;
 int __GFP_WAIT ;
 struct page* __alloc_pages_direct_compact (int,unsigned int,struct zonelist*,int,int *,int,struct zone*,int,int,int*,int*,unsigned long*) ;
 struct page* __alloc_pages_direct_reclaim (int,unsigned int,struct zonelist*,int,int *,int,struct zone*,int,unsigned long*) ;
 struct page* __alloc_pages_high_priority (int,unsigned int,struct zonelist*,int,int *,struct zone*,int) ;
 struct page* __alloc_pages_may_oom (int,unsigned int,struct zonelist*,int,int *,struct zone*,int) ;
 struct task_struct* current ;
 int dump_stack () ;
 struct page* get_page_from_freelist (int,int *,unsigned int,struct zonelist*,int,int,struct zone*,int) ;
 int gfp_to_alloc_flags (int) ;
 scalar_t__ in_interrupt () ;
 scalar_t__ kmemcheck_enabled ;
 int kmemcheck_pagealloc_alloc (struct page*,unsigned int,int) ;
 scalar_t__ oom_killer_disabled ;
 int pr_warning (char*,int ,unsigned int,int) ;
 scalar_t__ printk_ratelimit () ;
 scalar_t__ should_alloc_retry (int,unsigned int,unsigned long) ;
 int should_suppress_show_mem () ;
 int show_mem (unsigned int) ;
 scalar_t__ test_thread_flag (int ) ;
 int wait_iff_congested (struct zone*,int ,int) ;
 int wake_all_kswapd (unsigned int,struct zonelist*,int) ;

__attribute__((used)) static inline struct page *
__alloc_pages_slowpath(gfp_t gfp_mask, unsigned int order,
 struct zonelist *zonelist, enum zone_type high_zoneidx,
 nodemask_t *nodemask, struct zone *preferred_zone,
 int migratetype)
{
 const gfp_t wait = gfp_mask & __GFP_WAIT;
 struct page *page = ((void*)0);
 int alloc_flags;
 unsigned long pages_reclaimed = 0;
 unsigned long did_some_progress;
 struct task_struct *p = current;
 bool sync_migration = 0;
 bool deferred_compaction = 0;
 bool contended_compaction = 0;







 if (order >= MAX_ORDER) {
  WARN_ON_ONCE(!(gfp_mask & __GFP_NOWARN));
  return ((void*)0);
 }
 if (NUMA_BUILD && (gfp_mask & GFP_THISNODE) == GFP_THISNODE)
  goto nopage;

restart:
 if (!(gfp_mask & __GFP_NO_KSWAPD))
  wake_all_kswapd(order, zonelist, high_zoneidx);






 alloc_flags = gfp_to_alloc_flags(gfp_mask);


 page = get_page_from_freelist(gfp_mask, nodemask, order, zonelist,
   high_zoneidx, alloc_flags & ~ALLOC_NO_WATERMARKS,
   preferred_zone, migratetype);
 if (page)
  goto got_pg;

rebalance:

 if (alloc_flags & ALLOC_NO_WATERMARKS) {
  page = __alloc_pages_high_priority(gfp_mask, order,
    zonelist, high_zoneidx, nodemask,
    preferred_zone, migratetype);
  if (page)
   goto got_pg;
 }


 if (!wait)
  goto nopage;


 if (p->flags & PF_MEMALLOC)
  goto nopage;


 if (test_thread_flag(TIF_MEMDIE) && !(gfp_mask & __GFP_NOFAIL))
  goto nopage;





 page = __alloc_pages_direct_compact(gfp_mask, order,
     zonelist, high_zoneidx,
     nodemask,
     alloc_flags, preferred_zone,
     migratetype, sync_migration,
     &contended_compaction,
     &deferred_compaction,
     &did_some_progress);
 if (page)
  goto got_pg;
 sync_migration = 1;







 if ((deferred_compaction || contended_compaction) &&
      (gfp_mask & __GFP_NO_KSWAPD))
  goto nopage;


 page = __alloc_pages_direct_reclaim(gfp_mask, order,
     zonelist, high_zoneidx,
     nodemask,
     alloc_flags, preferred_zone,
     migratetype, &did_some_progress);
 if (page)
  goto got_pg;





 if (!did_some_progress) {
  if ((gfp_mask & __GFP_FS) && !(gfp_mask & __GFP_NORETRY)) {
   if (oom_killer_disabled)
    goto nopage;
   page = __alloc_pages_may_oom(gfp_mask, order,
     zonelist, high_zoneidx,
     nodemask, preferred_zone,
     migratetype);
   if (page)
    goto got_pg;







   if (order > PAGE_ALLOC_COSTLY_ORDER &&
      !(gfp_mask & __GFP_NOFAIL))
    goto nopage;

   goto restart;
  }
 }


 pages_reclaimed += did_some_progress;
 if (should_alloc_retry(gfp_mask, order, pages_reclaimed)) {

  wait_iff_congested(preferred_zone, BLK_RW_ASYNC, HZ/50);
  goto rebalance;
 } else {





  page = __alloc_pages_direct_compact(gfp_mask, order,
     zonelist, high_zoneidx,
     nodemask,
     alloc_flags, preferred_zone,
     migratetype, sync_migration,
     &contended_compaction,
     &deferred_compaction,
     &did_some_progress);
  if (page)
   goto got_pg;
 }

nopage:
 if (!(gfp_mask & __GFP_NOWARN) && printk_ratelimit()) {
  unsigned int filter = SHOW_MEM_FILTER_NODES;






  if (!(gfp_mask & __GFP_NOMEMALLOC))
   if (test_thread_flag(TIF_MEMDIE) ||
       (current->flags & (PF_MEMALLOC | PF_EXITING)))
    filter &= ~SHOW_MEM_FILTER_NODES;
  if (in_interrupt() || !wait)
   filter &= ~SHOW_MEM_FILTER_NODES;

  pr_warning("%s: page allocation failure. order:%d, mode:0x%x\n",
   p->comm, order, gfp_mask);
  dump_stack();
  if (!should_suppress_show_mem())
   show_mem(filter);
 }
 return page;
got_pg:
 if (kmemcheck_enabled)
  kmemcheck_pagealloc_alloc(page, order, gfp_mask);
 return page;

}
