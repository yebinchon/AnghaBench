
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * addr; int * prio; } ;
struct net_bridge_port {scalar_t__ state; TYPE_2__* dev; int port_no; TYPE_3__ designated_bridge; struct net_bridge* br; } ;
struct net_bridge {int lock; TYPE_1__* dev; } ;
typedef TYPE_3__ bridge_id ;
struct TYPE_5__ {int name; } ;
struct TYPE_4__ {int name; } ;


 scalar_t__ BR_STATE_DISABLED ;
 int br_become_designated_port (struct net_bridge_port*) ;
 int br_become_root_bridge (struct net_bridge*) ;
 int br_configuration_update (struct net_bridge*) ;
 int br_is_root_bridge (struct net_bridge*) ;
 int br_port_state_selection (struct net_bridge*) ;
 int pr_info (char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void br_message_age_timer_expired(unsigned long arg)
{
 struct net_bridge_port *p = (struct net_bridge_port *) arg;
 struct net_bridge *br = p->br;
 const bridge_id *id = &p->designated_bridge;
 int was_root;

 if (p->state == BR_STATE_DISABLED)
  return;


 pr_info("%s: neighbor %.2x%.2x.%.2x:%.2x:%.2x:%.2x:%.2x:%.2x lost on port %d(%s)\n",
  br->dev->name,
  id->prio[0], id->prio[1],
  id->addr[0], id->addr[1], id->addr[2],
  id->addr[3], id->addr[4], id->addr[5],
  p->port_no, p->dev->name);






 spin_lock(&br->lock);
 if (p->state == BR_STATE_DISABLED)
  goto unlock;
 was_root = br_is_root_bridge(br);

 br_become_designated_port(p);
 br_configuration_update(br);
 br_port_state_selection(br);
 if (br_is_root_bridge(br) && !was_root)
  br_become_root_bridge(br);
 unlock:
 spin_unlock(&br->lock);
}
