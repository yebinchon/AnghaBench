
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {int * zones; } ;


 int kfree (int *) ;
 size_t tipc_max_zones ;
 TYPE_1__ tipc_net ;
 int tipc_zone_delete (int ) ;

__attribute__((used)) static void net_stop(void)
{
 u32 z_num;

 if (!tipc_net.zones)
  return;

 for (z_num = 1; z_num <= tipc_max_zones; z_num++) {
  tipc_zone_delete(tipc_net.zones[z_num]);
 }
 kfree(tipc_net.zones);
 tipc_net.zones = ((void*)0);
}
