
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zone {TYPE_1__* free_area; } ;
struct compact_control {scalar_t__ free_pfn; scalar_t__ migrate_pfn; int order; size_t migratetype; } ;
struct TYPE_2__ {scalar_t__ nr_free; int * free_list; } ;


 int COMPACT_COMPLETE ;
 int COMPACT_CONTINUE ;
 int COMPACT_PARTIAL ;
 unsigned int MAX_ORDER ;
 int __reset_isolation_suitable (struct zone*) ;
 int current ;
 int current_is_kswapd () ;
 scalar_t__ fatal_signal_pending (int ) ;
 int list_empty (int *) ;
 unsigned long low_wmark_pages (struct zone*) ;
 unsigned int pageblock_order ;
 int zone_watermark_ok (struct zone*,int,unsigned long,int ,int ) ;

__attribute__((used)) static int compact_finished(struct zone *zone,
       struct compact_control *cc)
{
 unsigned int order;
 unsigned long watermark;

 if (fatal_signal_pending(current))
  return COMPACT_PARTIAL;


 if (cc->free_pfn <= cc->migrate_pfn) {





  if (!current_is_kswapd())
   __reset_isolation_suitable(zone);

  return COMPACT_COMPLETE;
 }





 if (cc->order == -1)
  return COMPACT_CONTINUE;


 watermark = low_wmark_pages(zone);
 watermark += (1 << cc->order);

 if (!zone_watermark_ok(zone, cc->order, watermark, 0, 0))
  return COMPACT_CONTINUE;


 for (order = cc->order; order < MAX_ORDER; order++) {

  if (!list_empty(&zone->free_area[order].free_list[cc->migratetype]))
   return COMPACT_PARTIAL;


  if (order >= pageblock_order && zone->free_area[order].nr_free)
   return COMPACT_PARTIAL;
 }

 return COMPACT_CONTINUE;
}
