
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_bridge_port {TYPE_3__* br; TYPE_2__* dev; int port_no; } ;
struct TYPE_6__ {TYPE_1__* dev; } ;
struct TYPE_5__ {int name; } ;
struct TYPE_4__ {int name; } ;


 scalar_t__ br_is_designated_port (struct net_bridge_port*) ;
 int br_topology_change_acknowledge (struct net_bridge_port*) ;
 int br_topology_change_detection (TYPE_3__*) ;
 int pr_info (char*,int ,int ,int ) ;

void br_received_tcn_bpdu(struct net_bridge_port *p)
{
 if (br_is_designated_port(p)) {
  pr_info("%s: received tcn bpdu on port %i(%s)\n",
         p->br->dev->name, p->port_no, p->dev->name);

  br_topology_change_detection(p->br);
  br_topology_change_acknowledge(p);
 }
}
