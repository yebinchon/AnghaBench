
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int present_pages; } ;
struct scan_control {unsigned long order; } ;


 int KSWAPD_ZONE_BALANCE_GAP_RATIO ;
 unsigned long PAGE_ALLOC_COSTLY_ORDER ;
 scalar_t__ compaction_deferred (struct zone*) ;
 int compaction_suitable (struct zone*,unsigned long) ;
 unsigned long high_wmark_pages (struct zone*) ;
 int low_wmark_pages (struct zone*) ;
 unsigned long min (int ,int) ;
 int zone_watermark_ok_safe (struct zone*,int ,unsigned long,int ,int ) ;

__attribute__((used)) static inline bool compaction_ready(struct zone *zone, struct scan_control *sc)
{
 unsigned long balance_gap, watermark;
 bool watermark_ok;


 if (sc->order <= PAGE_ALLOC_COSTLY_ORDER)
  return 0;







 balance_gap = min(low_wmark_pages(zone),
  (zone->present_pages + KSWAPD_ZONE_BALANCE_GAP_RATIO-1) /
   KSWAPD_ZONE_BALANCE_GAP_RATIO);
 watermark = high_wmark_pages(zone) + balance_gap + (2UL << sc->order);
 watermark_ok = zone_watermark_ok_safe(zone, 0, watermark, 0, 0);





 if (compaction_deferred(zone))
  return watermark_ok;


 if (!compaction_suitable(zone, sc->order))
  return 0;

 return watermark_ok;
}
