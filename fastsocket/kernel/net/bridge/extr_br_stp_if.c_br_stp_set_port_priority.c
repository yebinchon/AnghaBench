
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_bridge_port {TYPE_1__* br; void* designated_port; void* port_id; int designated_bridge; int priority; int port_no; } ;
typedef void* port_id ;
struct TYPE_2__ {int bridge_id; } ;


 int br_become_designated_port (struct net_bridge_port*) ;
 scalar_t__ br_is_designated_port (struct net_bridge_port*) ;
 void* br_make_port_id (int ,int ) ;
 int br_port_state_selection (TYPE_1__*) ;
 int memcmp (int *,int *,int) ;

void br_stp_set_port_priority(struct net_bridge_port *p, u8 newprio)
{
 port_id new_port_id = br_make_port_id(newprio, p->port_no);

 if (br_is_designated_port(p))
  p->designated_port = new_port_id;

 p->port_id = new_port_id;
 p->priority = newprio;
 if (!memcmp(&p->br->bridge_id, &p->designated_bridge, 8) &&
     p->port_id < p->designated_port) {
  br_become_designated_port(p);
  br_port_state_selection(p->br);
 }
}
