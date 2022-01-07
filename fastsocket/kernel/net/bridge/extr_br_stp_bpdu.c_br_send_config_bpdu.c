
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_bridge_port {TYPE_1__* br; } ;
struct TYPE_6__ {unsigned char* prio; unsigned char* addr; } ;
struct TYPE_5__ {unsigned char* prio; unsigned char* addr; } ;
struct br_config_bpdu {int root_path_cost; int port_id; int forward_delay; int hello_time; int max_age; int message_age; TYPE_3__ bridge_id; TYPE_2__ root; scalar_t__ topology_change_ack; scalar_t__ topology_change; } ;
struct TYPE_4__ {scalar_t__ stp_enabled; } ;


 unsigned char BPDU_TYPE_CONFIG ;
 scalar_t__ BR_KERNEL_STP ;
 int br_send_bpdu (struct net_bridge_port*,unsigned char*,int) ;
 int br_set_ticks (unsigned char*,int ) ;

void br_send_config_bpdu(struct net_bridge_port *p, struct br_config_bpdu *bpdu)
{
 unsigned char buf[35];

 if (p->br->stp_enabled != BR_KERNEL_STP)
  return;

 buf[0] = 0;
 buf[1] = 0;
 buf[2] = 0;
 buf[3] = BPDU_TYPE_CONFIG;
 buf[4] = (bpdu->topology_change ? 0x01 : 0) |
  (bpdu->topology_change_ack ? 0x80 : 0);
 buf[5] = bpdu->root.prio[0];
 buf[6] = bpdu->root.prio[1];
 buf[7] = bpdu->root.addr[0];
 buf[8] = bpdu->root.addr[1];
 buf[9] = bpdu->root.addr[2];
 buf[10] = bpdu->root.addr[3];
 buf[11] = bpdu->root.addr[4];
 buf[12] = bpdu->root.addr[5];
 buf[13] = (bpdu->root_path_cost >> 24) & 0xFF;
 buf[14] = (bpdu->root_path_cost >> 16) & 0xFF;
 buf[15] = (bpdu->root_path_cost >> 8) & 0xFF;
 buf[16] = bpdu->root_path_cost & 0xFF;
 buf[17] = bpdu->bridge_id.prio[0];
 buf[18] = bpdu->bridge_id.prio[1];
 buf[19] = bpdu->bridge_id.addr[0];
 buf[20] = bpdu->bridge_id.addr[1];
 buf[21] = bpdu->bridge_id.addr[2];
 buf[22] = bpdu->bridge_id.addr[3];
 buf[23] = bpdu->bridge_id.addr[4];
 buf[24] = bpdu->bridge_id.addr[5];
 buf[25] = (bpdu->port_id >> 8) & 0xFF;
 buf[26] = bpdu->port_id & 0xFF;

 br_set_ticks(buf+27, bpdu->message_age);
 br_set_ticks(buf+29, bpdu->max_age);
 br_set_ticks(buf+31, bpdu->hello_time);
 br_set_ticks(buf+33, bpdu->forward_delay);

 br_send_bpdu(p, buf, 35);
}
