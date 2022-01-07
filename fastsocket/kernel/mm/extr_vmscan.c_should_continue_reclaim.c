
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int dummy; } ;
struct scan_control {int gfp_mask; unsigned long order; unsigned long nr_reclaimed; } ;




 int NR_INACTIVE_ANON ;
 int NR_INACTIVE_FILE ;
 int __GFP_REPEAT ;
 int compaction_suitable (struct zone*,unsigned long) ;
 int in_reclaim_compaction (int,struct scan_control*) ;
 scalar_t__ nr_swap_pages ;
 unsigned long zone_page_state (struct zone*,int ) ;

__attribute__((used)) static inline bool should_continue_reclaim(struct zone *zone,
     unsigned long nr_reclaimed,
     unsigned long nr_scanned,
     int priority,
     struct scan_control *sc)
{
 unsigned long pages_for_compaction;
 unsigned long inactive_lru_pages;


 if (!in_reclaim_compaction(priority, sc))
  return 0;


 if (sc->gfp_mask & __GFP_REPEAT) {






  if (!nr_reclaimed && !nr_scanned)
   return 0;
 } else {
  if (!nr_reclaimed)
   return 0;
 }





 pages_for_compaction = (2UL << sc->order);
 inactive_lru_pages = zone_page_state(zone, NR_INACTIVE_FILE);
 if (nr_swap_pages > 0)
  inactive_lru_pages += zone_page_state(zone, NR_INACTIVE_ANON);
 if (sc->nr_reclaimed < pages_for_compaction &&
   inactive_lru_pages > pages_for_compaction)
  return 1;


 switch (compaction_suitable(zone, sc->order)) {
 case 128:
 case 129:
  return 0;
 default:
  return 1;
 }
}
