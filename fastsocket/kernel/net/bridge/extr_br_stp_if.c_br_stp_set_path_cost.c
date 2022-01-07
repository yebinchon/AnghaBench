
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_bridge_port {int br; int path_cost; } ;


 int br_configuration_update (int ) ;
 int br_port_state_selection (int ) ;

void br_stp_set_path_cost(struct net_bridge_port *p, u32 path_cost)
{
 p->path_cost = path_cost;
 br_configuration_update(p->br);
 br_port_state_selection(p->br);
}
