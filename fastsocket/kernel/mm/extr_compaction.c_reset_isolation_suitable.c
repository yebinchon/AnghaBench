
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct zone {int dummy; } ;
struct TYPE_3__ {struct zone* node_zones; } ;
typedef TYPE_1__ pg_data_t ;


 int MAX_NR_ZONES ;
 int __reset_isolation_suitable (struct zone*) ;
 int populated_zone (struct zone*) ;

void reset_isolation_suitable(pg_data_t *pgdat)
{
 int zoneid;

 for (zoneid = 0; zoneid < MAX_NR_ZONES; zoneid++) {
  struct zone *zone = &pgdat->node_zones[zoneid];
  if (!populated_zone(zone))
   continue;


  __reset_isolation_suitable(zone);
 }
}
