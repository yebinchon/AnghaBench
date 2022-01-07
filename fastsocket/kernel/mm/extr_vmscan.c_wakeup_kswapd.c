
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zone {TYPE_1__* zone_pgdat; } ;
struct TYPE_2__ {int kswapd_max_order; int kswapd_wait; int node_id; } ;
typedef TYPE_1__ pg_data_t ;


 int GFP_KERNEL ;
 int cpuset_zone_allowed_hardwall (struct zone*,int ) ;
 int low_wmark_pages (struct zone*) ;
 int populated_zone (struct zone*) ;
 int trace_mm_vmscan_wakeup_kswapd (int ,int ,int) ;
 int waitqueue_active (int *) ;
 int wake_up_interruptible (int *) ;
 int zone_idx (struct zone*) ;
 scalar_t__ zone_watermark_ok_safe (struct zone*,int,int ,int ,int ) ;

void wakeup_kswapd(struct zone *zone, int order)
{
 pg_data_t *pgdat;

 if (!populated_zone(zone))
  return;

 if (!cpuset_zone_allowed_hardwall(zone, GFP_KERNEL))
  return;
 pgdat = zone->zone_pgdat;
 if (pgdat->kswapd_max_order < order)
  pgdat->kswapd_max_order = order;
 if (!waitqueue_active(&pgdat->kswapd_wait))
  return;
 if (zone_watermark_ok_safe(zone, order, low_wmark_pages(zone), 0, 0))
  return;

 trace_mm_vmscan_wakeup_kswapd(pgdat->node_id, zone_idx(zone), order);
 wake_up_interruptible(&pgdat->kswapd_wait);
}
