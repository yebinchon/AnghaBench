
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct zone {int present_pages; int pages_scanned; int prev_priority; } ;
struct scan_control {int may_unmap; int may_swap; int order; int nr_reclaimed; int may_writepage; int gfp_mask; scalar_t__ nr_scanned; int * target_mem_cgroup; int swappiness; int nr_to_reclaim; } ;
struct reclaim_state {scalar_t__ reclaimed_slab; } ;
struct TYPE_5__ {int nr_zones; int node_id; struct zone* node_zones; } ;
typedef TYPE_1__ pg_data_t ;
struct TYPE_6__ {struct reclaim_state* reclaim_state; } ;


 int BLK_RW_ASYNC ;
 int DEF_PRIORITY ;
 int GFP_KERNEL ;
 int HZ ;
 int KSWAPD_SKIP_CONGESTION_WAIT ;
 int KSWAPD_ZONE_BALANCE_GAP_RATIO ;
 int MAX_NR_ZONES ;
 int PAGEOUTRUN ;
 int PAGE_ALLOC_COSTLY_ORDER ;
 int SWAP_CLUSTER_MAX ;
 int ULONG_MAX ;
 int ZONE_ALL_UNRECLAIMABLE ;
 int ZONE_CONGESTED ;
 int age_active_anon (struct zone*,struct scan_control*,int) ;
 int compact_zone_order (struct zone*,int,int ,int ,int*) ;
 int cond_resched () ;
 int congestion_wait (int ,int) ;
 int count_vm_event (int ) ;
 TYPE_3__* current ;
 int disable_swap_token () ;
 scalar_t__ high_wmark_pages (struct zone*) ;
 int laptop_mode ;
 int low_wmark_pages (struct zone*) ;
 int mem_cgroup_soft_limit_reclaim (struct zone*,int,int ,int,int) ;
 unsigned long min (int ,int) ;
 scalar_t__ min_wmark_pages (struct zone*) ;
 int note_zone_scanning_priority (struct zone*,int) ;
 int populated_zone (struct zone*) ;
 int shrink_slab (scalar_t__,int ,unsigned long) ;
 int shrink_zone (int,struct zone*,struct scan_control*) ;
 int trace_mm_kswapd_ran (TYPE_1__*,unsigned long) ;
 int try_to_freeze () ;
 int vm_swappiness ;
 int zone_clear_flag (struct zone*,int ) ;
 int zone_idx (struct zone*) ;
 scalar_t__ zone_is_all_unreclaimable (struct zone*) ;
 int zone_reclaimable_pages (struct zone*) ;
 int zone_set_flag (struct zone*,int ) ;
 int zone_watermark_ok (struct zone*,int,scalar_t__,int,int ) ;
 int zone_watermark_ok_safe (struct zone*,int,scalar_t__,int,int ) ;

__attribute__((used)) static unsigned long balance_pgdat(pg_data_t *pgdat, int order)
{
 int all_zones_ok;
 int priority;
 int i;
 unsigned long total_scanned;
 unsigned long total_reclaimed = 0;
 struct reclaim_state *reclaim_state = current->reclaim_state;
 struct scan_control sc = {
  .gfp_mask = GFP_KERNEL,
  .may_unmap = 1,
  .may_swap = 1,




  .nr_to_reclaim = ULONG_MAX,
  .swappiness = vm_swappiness,
  .order = order,
  .target_mem_cgroup = ((void*)0),
 };





 int temp_priority[MAX_NR_ZONES];

loop_again:
 total_scanned = 0;
 sc.nr_reclaimed = 0;
 sc.may_writepage = !laptop_mode;
 count_vm_event(PAGEOUTRUN);

 for (i = 0; i < pgdat->nr_zones; i++)
  temp_priority[i] = DEF_PRIORITY;

 for (priority = DEF_PRIORITY; priority >= 0; priority--) {
  int end_zone = 0;
  unsigned long lru_pages = 0;
  int has_under_min_watermark_zone = 0;


  if (!priority)
   disable_swap_token();

  all_zones_ok = 1;





  for (i = pgdat->nr_zones - 1; i >= 0; i--) {
   struct zone *zone = pgdat->node_zones + i;

   if (!populated_zone(zone))
    continue;

   if (zone_is_all_unreclaimable(zone) &&
       priority != DEF_PRIORITY)
    continue;





   age_active_anon(zone, &sc, priority);

   if (!zone_watermark_ok_safe(zone, order,
     high_wmark_pages(zone), 0, 0)) {
    end_zone = i;
    break;
   }
  }
  if (i < 0)
   goto out;

  for (i = 0; i <= end_zone; i++) {
   struct zone *zone = pgdat->node_zones + i;

   lru_pages += zone_reclaimable_pages(zone);
  }
  for (i = 0; i <= end_zone; i++) {
   struct zone *zone = pgdat->node_zones + i;
   int nr_slab;
   int nid, zid;
   unsigned long balance_gap;
   bool contended = 0;

   if (!populated_zone(zone))
    continue;

   if (zone_is_all_unreclaimable(zone) &&
     priority != DEF_PRIORITY)
    continue;

   if (!zone_watermark_ok(zone, order,
     high_wmark_pages(zone), end_zone, 0))
    all_zones_ok = 0;
   temp_priority[i] = priority;
   sc.nr_scanned = 0;
   note_zone_scanning_priority(zone, priority);

   nid = pgdat->node_id;
   zid = zone_idx(zone);




   mem_cgroup_soft_limit_reclaim(zone, order, sc.gfp_mask,
       nid, zid);
   balance_gap = min(low_wmark_pages(zone),
    (zone->present_pages +
     KSWAPD_ZONE_BALANCE_GAP_RATIO-1) /
    KSWAPD_ZONE_BALANCE_GAP_RATIO);
   if (!zone_watermark_ok_safe(zone, order,
     high_wmark_pages(zone) + balance_gap,
     end_zone, 0))
    shrink_zone(priority, zone, &sc);
   reclaim_state->reclaimed_slab = 0;
   nr_slab = shrink_slab(sc.nr_scanned, GFP_KERNEL,
      lru_pages);
   sc.nr_reclaimed += reclaim_state->reclaimed_slab;
   total_scanned += sc.nr_scanned;

   if (zone_is_all_unreclaimable(zone))
    continue;
   if (nr_slab == 0 && zone->pages_scanned >=
     (zone_reclaimable_pages(zone) * 6))
     zone_set_flag(zone,
            ZONE_ALL_UNRECLAIMABLE);





   if (total_scanned > SWAP_CLUSTER_MAX * 2 &&
       total_scanned > sc.nr_reclaimed + sc.nr_reclaimed / 2)
    sc.may_writepage = 1;






   if (sc.order > PAGE_ALLOC_COSTLY_ORDER)
    compact_zone_order(zone, sc.order, sc.gfp_mask, 0,
      &contended);

   if (!zone_watermark_ok_safe(zone, order,
     high_wmark_pages(zone), end_zone, 0)) {




    if (!zone_watermark_ok_safe(zone, order,
         min_wmark_pages(zone), end_zone, 0))
     has_under_min_watermark_zone = 1;
   } else {







    zone_clear_flag(zone, ZONE_CONGESTED);
                        }


  }
  total_reclaimed += sc.nr_reclaimed;
  if (all_zones_ok)
   break;




  if (total_scanned && (priority < DEF_PRIORITY - 2)) {
   if (has_under_min_watermark_zone)
    count_vm_event(KSWAPD_SKIP_CONGESTION_WAIT);
   else
    congestion_wait(BLK_RW_ASYNC, HZ/10);
  }







  if (sc.nr_reclaimed >= SWAP_CLUSTER_MAX)
   break;
  cond_resched();
 }
out:





 for (i = 0; i < pgdat->nr_zones; i++) {
  struct zone *zone = pgdat->node_zones + i;

  zone->prev_priority = temp_priority[i];
 }
 if (!all_zones_ok) {
  cond_resched();

  try_to_freeze();
  if (sc.nr_reclaimed < SWAP_CLUSTER_MAX)
   order = sc.order = 0;

  goto loop_again;
 }

 trace_mm_kswapd_ran(pgdat, total_reclaimed);
 return sc.nr_reclaimed;
}
