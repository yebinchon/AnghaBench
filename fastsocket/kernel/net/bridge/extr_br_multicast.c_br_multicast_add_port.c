
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {int multicast_router; int multicast_query_timer; int multicast_router_timer; } ;


 int br_multicast_port_query_expired ;
 int br_multicast_router_expired ;
 int setup_timer (int *,int ,unsigned long) ;

void br_multicast_add_port(struct net_bridge_port *port)
{
 port->multicast_router = 1;

 setup_timer(&port->multicast_router_timer, br_multicast_router_expired,
      (unsigned long)port);
 setup_timer(&port->multicast_query_timer,
      br_multicast_port_query_expired, (unsigned long)port);
}
