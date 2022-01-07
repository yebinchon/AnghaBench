
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct zonelist {int * _zonerefs; } ;
struct zone {int dummy; } ;
struct TYPE_3__ {struct zone* node_zones; } ;
typedef TYPE_1__ pg_data_t ;
typedef enum zone_type { ____Placeholder_zone_type } zone_type ;


 int BUG_ON (int) ;
 int MAX_NR_ZONES ;
 int check_highest_zone (int) ;
 scalar_t__ populated_zone (struct zone*) ;
 int zoneref_set_zone (struct zone*,int *) ;

__attribute__((used)) static int build_zonelists_node(pg_data_t *pgdat, struct zonelist *zonelist,
    int nr_zones, enum zone_type zone_type)
{
 struct zone *zone;

 BUG_ON(zone_type >= MAX_NR_ZONES);
 zone_type++;

 do {
  zone_type--;
  zone = pgdat->node_zones + zone_type;
  if (populated_zone(zone)) {
   zoneref_set_zone(zone,
    &zonelist->_zonerefs[nr_zones++]);
   check_highest_zone(zone_type);
  }

 } while (zone_type);
 return nr_zones;
}
