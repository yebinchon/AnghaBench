
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {unsigned long inactive_ratio; } ;


 int NR_ACTIVE_ANON ;
 int NR_INACTIVE_ANON ;
 unsigned long zone_page_state (struct zone*,int ) ;

__attribute__((used)) static int inactive_anon_is_low_global(struct zone *zone)
{
 unsigned long active, inactive;

 active = zone_page_state(zone, NR_ACTIVE_ANON);
 inactive = zone_page_state(zone, NR_INACTIVE_ANON);

 if (inactive * zone->inactive_ratio < active)
  return 1;

 return 0;
}
