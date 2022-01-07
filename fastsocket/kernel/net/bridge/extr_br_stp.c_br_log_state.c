
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_bridge_port {size_t state; TYPE_3__* dev; int port_no; TYPE_2__* br; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_4__ {int name; } ;


 int * br_port_state_names ;
 int pr_info (char*,int ,int ,int ,int ) ;

void br_log_state(const struct net_bridge_port *p)
{
 pr_info("%s: port %d(%s) entering %s state\n",
  p->br->dev->name, p->port_no, p->dev->name,
  br_port_state_names[p->state]);

}
