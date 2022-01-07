
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct zone {int dummy; } ;
struct TYPE_3__ {int nr_zones; struct zone* node_zones; } ;
typedef TYPE_1__ pg_data_t ;


 int high_wmark_pages (struct zone*) ;
 int populated_zone (struct zone*) ;
 scalar_t__ zone_is_all_unreclaimable (struct zone*) ;
 int zone_watermark_ok_safe (struct zone*,int,int ,int ,int ) ;

__attribute__((used)) static int sleeping_prematurely(pg_data_t *pgdat, int order, long remaining)
{
 int i;


 if (remaining)
  return 1;


 for (i = 0; i < pgdat->nr_zones; i++) {
  struct zone *zone = pgdat->node_zones + i;

  if (!populated_zone(zone))
   continue;

  if (zone_is_all_unreclaimable(zone))
   continue;

  if (!zone_watermark_ok_safe(zone, order, high_wmark_pages(zone),
        0, 0))
   return 1;
 }

 return 0;
}
