
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_bridge_port {scalar_t__ state; int forward_delay_timer; TYPE_2__* dev; int port_no; struct net_bridge* br; } ;
struct net_bridge {int lock; scalar_t__ forward_delay; TYPE_1__* dev; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int name; } ;


 scalar_t__ BR_STATE_FORWARDING ;
 scalar_t__ BR_STATE_LEARNING ;
 scalar_t__ BR_STATE_LISTENING ;
 scalar_t__ br_is_designated_for_some_port (struct net_bridge*) ;
 int br_log_state (struct net_bridge_port*) ;
 int br_topology_change_detection (struct net_bridge*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int pr_debug (char*,int ,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void br_forward_delay_timer_expired(unsigned long arg)
{
 struct net_bridge_port *p = (struct net_bridge_port *) arg;
 struct net_bridge *br = p->br;

 pr_debug("%s: %d(%s) forward delay timer\n",
   br->dev->name, p->port_no, p->dev->name);
 spin_lock(&br->lock);
 if (p->state == BR_STATE_LISTENING) {
  p->state = BR_STATE_LEARNING;
  mod_timer(&p->forward_delay_timer,
     jiffies + br->forward_delay);
 } else if (p->state == BR_STATE_LEARNING) {
  p->state = BR_STATE_FORWARDING;
  if (br_is_designated_for_some_port(br))
   br_topology_change_detection(br);
 }
 br_log_state(p);
 spin_unlock(&br->lock);
}
