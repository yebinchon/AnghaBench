
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_bridge_port {TYPE_3__* br; scalar_t__ config_pending; TYPE_2__* dev; int port_no; } ;
struct TYPE_6__ {int lock; TYPE_1__* dev; } ;
struct TYPE_5__ {int name; } ;
struct TYPE_4__ {int name; } ;


 int br_transmit_config (struct net_bridge_port*) ;
 int pr_debug (char*,int ,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void br_hold_timer_expired(unsigned long arg)
{
 struct net_bridge_port *p = (struct net_bridge_port *) arg;

 pr_debug("%s: %d(%s) hold timer expired\n",
   p->br->dev->name, p->port_no, p->dev->name);

 spin_lock(&p->br->lock);
 if (p->config_pending)
  br_transmit_config(p);
 spin_unlock(&p->br->lock);
}
