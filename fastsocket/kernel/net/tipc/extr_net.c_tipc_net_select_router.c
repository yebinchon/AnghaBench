
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * zones; } ;


 TYPE_1__ tipc_net ;
 size_t tipc_zone (int ) ;
 int tipc_zone_select_router (int ,int ,int ) ;

u32 tipc_net_select_router(u32 addr, u32 ref)
{
 return tipc_zone_select_router(tipc_net.zones[tipc_zone(addr)], addr, ref);
}
