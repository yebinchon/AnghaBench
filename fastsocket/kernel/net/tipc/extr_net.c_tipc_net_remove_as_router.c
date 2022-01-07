
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {int * zones; } ;


 size_t tipc_max_zones ;
 TYPE_1__ tipc_net ;
 int tipc_zone_remove_as_router (int ,size_t) ;

void tipc_net_remove_as_router(u32 router)
{
 u32 z_num;

 for (z_num = 1; z_num <= tipc_max_zones; z_num++) {
  if (!tipc_net.zones[z_num])
   continue;
  tipc_zone_remove_as_router(tipc_net.zones[z_num], router);
 }
}
