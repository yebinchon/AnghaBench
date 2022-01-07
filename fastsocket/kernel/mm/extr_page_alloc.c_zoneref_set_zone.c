
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zoneref {int zone_idx; struct zone* zone; } ;
struct zone {int dummy; } ;


 int zone_idx (struct zone*) ;

__attribute__((used)) static void zoneref_set_zone(struct zone *zone, struct zoneref *zoneref)
{
 zoneref->zone = zone;
 zoneref->zone_idx = zone_idx(zone);
}
