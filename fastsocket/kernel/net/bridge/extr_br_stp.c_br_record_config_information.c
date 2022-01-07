
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_bridge_port {TYPE_1__* br; int message_age_timer; int designated_port; int designated_bridge; int designated_cost; int designated_root; } ;
struct br_config_bpdu {scalar_t__ message_age; int port_id; int bridge_id; int root_path_cost; int root; } ;
struct TYPE_2__ {scalar_t__ max_age; } ;


 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static inline void br_record_config_information(struct net_bridge_port *p,
      const struct br_config_bpdu *bpdu)
{
 p->designated_root = bpdu->root;
 p->designated_cost = bpdu->root_path_cost;
 p->designated_bridge = bpdu->bridge_id;
 p->designated_port = bpdu->port_id;

 mod_timer(&p->message_age_timer, jiffies
    + (p->br->max_age - bpdu->message_age));
}
