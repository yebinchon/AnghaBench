
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zonelist {int dummy; } ;
struct zone {int dummy; } ;
struct task_struct {int flags; struct reclaim_state* reclaim_state; } ;
struct reclaim_state {scalar_t__ reclaimed_slab; } ;
struct page {int dummy; } ;
typedef int nodemask_t ;
typedef int gfp_t ;
typedef enum zone_type { ____Placeholder_zone_type } zone_type ;


 int PF_MEMALLOC ;
 int cond_resched () ;
 int cpuset_memory_pressure_bump () ;
 struct task_struct* current ;
 int drain_all_pages () ;
 struct page* get_page_from_freelist (int ,int *,unsigned int,struct zonelist*,int,int,struct zone*,int) ;
 int lockdep_clear_current_reclaim_state () ;
 int lockdep_set_current_reclaim_state (int ) ;
 unsigned long try_to_free_pages (struct zonelist*,unsigned int,int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline struct page *
__alloc_pages_direct_reclaim(gfp_t gfp_mask, unsigned int order,
 struct zonelist *zonelist, enum zone_type high_zoneidx,
 nodemask_t *nodemask, int alloc_flags, struct zone *preferred_zone,
 int migratetype, unsigned long *did_some_progress)
{
 struct page *page = ((void*)0);
 struct reclaim_state reclaim_state;
 struct task_struct *p = current;
 bool drained = 0;

 cond_resched();


 cpuset_memory_pressure_bump();
 p->flags |= PF_MEMALLOC;
 lockdep_set_current_reclaim_state(gfp_mask);
 reclaim_state.reclaimed_slab = 0;
 p->reclaim_state = &reclaim_state;

 *did_some_progress = try_to_free_pages(zonelist, order, gfp_mask, nodemask);

 p->reclaim_state = ((void*)0);
 lockdep_clear_current_reclaim_state();
 p->flags &= ~PF_MEMALLOC;

 cond_resched();

 if (order != 0)
  drain_all_pages();

 if (unlikely(!(*did_some_progress)))
  return ((void*)0);

retry:
 page = get_page_from_freelist(gfp_mask, nodemask, order,
     zonelist, high_zoneidx,
     alloc_flags, preferred_zone,
     migratetype);





 if (!page && !drained) {
  drain_all_pages();
  drained = 1;
  goto retry;
 }

 return page;
}
