
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {int multicast_router_timer; } ;


 int del_timer_sync (int *) ;

void br_multicast_del_port(struct net_bridge_port *port)
{
 del_timer_sync(&port->multicast_router_timer);
}
