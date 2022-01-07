
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {scalar_t__* zones; } ;


 size_t tipc_max_zones ;
 TYPE_1__ tipc_net ;
 int tipc_zone_send_external_routes (scalar_t__,size_t) ;

void tipc_net_send_external_routes(u32 dest)
{
 u32 z_num;

 for (z_num = 1; z_num <= tipc_max_zones; z_num++) {
  if (tipc_net.zones[z_num])
   tipc_zone_send_external_routes(tipc_net.zones[z_num], dest);
 }
}
