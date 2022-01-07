
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int dummy; } ;


 int NR_ACTIVE_ANON ;
 int NR_ACTIVE_FILE ;
 int NR_INACTIVE_ANON ;
 int NR_INACTIVE_FILE ;
 int NR_ISOLATED_ANON ;
 int NR_ISOLATED_FILE ;
 unsigned long zone_page_state (struct zone*,int ) ;

__attribute__((used)) static bool too_many_isolated(struct zone *zone)
{
 unsigned long active, inactive, isolated;

 inactive = zone_page_state(zone, NR_INACTIVE_FILE) +
     zone_page_state(zone, NR_INACTIVE_ANON);
 active = zone_page_state(zone, NR_ACTIVE_FILE) +
     zone_page_state(zone, NR_ACTIVE_ANON);
 isolated = zone_page_state(zone, NR_ISOLATED_FILE) +
     zone_page_state(zone, NR_ISOLATED_ANON);

 return isolated > (inactive + active) / 2;
}
