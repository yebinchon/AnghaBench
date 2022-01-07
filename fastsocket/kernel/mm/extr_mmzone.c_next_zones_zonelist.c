
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zoneref {scalar_t__ zone; } ;
struct zone {int dummy; } ;
typedef int nodemask_t ;
typedef enum zone_type { ____Placeholder_zone_type } zone_type ;


 scalar_t__ likely (int ) ;
 struct zone* zonelist_zone (struct zoneref*) ;
 int zonelist_zone_idx (struct zoneref*) ;
 int zref_in_nodemask (struct zoneref*,int *) ;

struct zoneref *next_zones_zonelist(struct zoneref *z,
     enum zone_type highest_zoneidx,
     nodemask_t *nodes,
     struct zone **zone)
{




 if (likely(nodes == ((void*)0)))
  while (zonelist_zone_idx(z) > highest_zoneidx)
   z++;
 else
  while (zonelist_zone_idx(z) > highest_zoneidx ||
    (z->zone && !zref_in_nodemask(z, nodes)))
   z++;

 *zone = zonelist_zone(z);
 return z;
}
