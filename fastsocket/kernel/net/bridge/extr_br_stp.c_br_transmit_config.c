
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expires; } ;
struct net_bridge_port {int config_pending; int hold_timer; scalar_t__ topology_change_ack; TYPE_1__ message_age_timer; int port_id; struct net_bridge* br; } ;
struct net_bridge {scalar_t__ max_age; int forward_delay; int hello_time; int root_port; int bridge_id; int root_path_cost; int designated_root; int topology_change; } ;
struct br_config_bpdu {scalar_t__ message_age; scalar_t__ max_age; int forward_delay; int hello_time; int port_id; int bridge_id; int root_path_cost; int root; scalar_t__ topology_change_ack; int topology_change; } ;


 scalar_t__ BR_HOLD_TIME ;
 scalar_t__ MESSAGE_AGE_INCR ;
 struct net_bridge_port* br_get_port (struct net_bridge*,int ) ;
 scalar_t__ br_is_root_bridge (struct net_bridge*) ;
 int br_send_config_bpdu (struct net_bridge_port*,struct br_config_bpdu*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,int ) ;
 int round_jiffies (scalar_t__) ;
 scalar_t__ timer_pending (int *) ;

void br_transmit_config(struct net_bridge_port *p)
{
 struct br_config_bpdu bpdu;
 struct net_bridge *br;


 if (timer_pending(&p->hold_timer)) {
  p->config_pending = 1;
  return;
 }

 br = p->br;

 bpdu.topology_change = br->topology_change;
 bpdu.topology_change_ack = p->topology_change_ack;
 bpdu.root = br->designated_root;
 bpdu.root_path_cost = br->root_path_cost;
 bpdu.bridge_id = br->bridge_id;
 bpdu.port_id = p->port_id;
 if (br_is_root_bridge(br))
  bpdu.message_age = 0;
 else {
  struct net_bridge_port *root
   = br_get_port(br, br->root_port);
  bpdu.message_age = br->max_age
   - (root->message_age_timer.expires - jiffies)
   + MESSAGE_AGE_INCR;
 }
 bpdu.max_age = br->max_age;
 bpdu.hello_time = br->hello_time;
 bpdu.forward_delay = br->forward_delay;

 if (bpdu.message_age < br->max_age) {
  br_send_config_bpdu(p, &bpdu);
  p->topology_change_ack = 0;
  p->config_pending = 0;
  mod_timer(&p->hold_timer,
     round_jiffies(jiffies + BR_HOLD_TIME));
 }
}
