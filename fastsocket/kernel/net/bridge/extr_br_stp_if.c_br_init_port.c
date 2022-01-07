
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {scalar_t__ config_pending; scalar_t__ topology_change_ack; int state; int port_no; int priority; int port_id; } ;


 int BR_STATE_BLOCKING ;
 int br_become_designated_port (struct net_bridge_port*) ;
 int br_make_port_id (int ,int ) ;

void br_init_port(struct net_bridge_port *p)
{
 p->port_id = br_make_port_id(p->priority, p->port_no);
 br_become_designated_port(p);
 p->state = BR_STATE_BLOCKING;
 p->topology_change_ack = 0;
 p->config_pending = 0;
}
