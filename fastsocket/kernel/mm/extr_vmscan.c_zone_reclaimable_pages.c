
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int dummy; } ;


 int NR_ACTIVE_ANON ;
 int NR_ACTIVE_FILE ;
 int NR_INACTIVE_ANON ;
 int NR_INACTIVE_FILE ;
 scalar_t__ nr_swap_pages ;
 int zone_page_state (struct zone*,int ) ;

unsigned long zone_reclaimable_pages(struct zone *zone)
{
 int nr;

 nr = zone_page_state(zone, NR_ACTIVE_FILE) +
      zone_page_state(zone, NR_INACTIVE_FILE);

 if (nr_swap_pages > 0)
  nr += zone_page_state(zone, NR_ACTIVE_ANON) +
        zone_page_state(zone, NR_INACTIVE_ANON);

 return nr;
}
