
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {int br; } ;


 int br_init_port (struct net_bridge_port*) ;
 int br_port_state_selection (int ) ;

void br_stp_enable_port(struct net_bridge_port *p)
{
 br_init_port(p);
 br_port_state_selection(p->br);
}
