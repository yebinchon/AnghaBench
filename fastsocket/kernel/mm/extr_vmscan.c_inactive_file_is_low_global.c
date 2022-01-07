
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int dummy; } ;


 int NR_ACTIVE_FILE ;
 int NR_INACTIVE_FILE ;
 unsigned long zone_page_state (struct zone*,int ) ;

__attribute__((used)) static int inactive_file_is_low_global(struct zone *zone)
{
 unsigned long active, inactive;

 active = zone_page_state(zone, NR_ACTIVE_FILE);
 inactive = zone_page_state(zone, NR_INACTIVE_FILE);

 return (active > inactive);
}
