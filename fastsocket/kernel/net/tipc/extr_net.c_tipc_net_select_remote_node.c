
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tipc_node {int dummy; } ;
struct TYPE_2__ {int * zones; } ;


 TYPE_1__ tipc_net ;
 size_t tipc_zone (int ) ;
 struct tipc_node* tipc_zone_select_remote_node (int ,int ,int ) ;

struct tipc_node *tipc_net_select_remote_node(u32 addr, u32 ref)
{
 return tipc_zone_select_remote_node(tipc_net.zones[tipc_zone(addr)], addr, ref);
}
