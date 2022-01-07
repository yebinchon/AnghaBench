
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_bridge_port {TYPE_1__* br; } ;
struct TYPE_2__ {scalar_t__ stp_enabled; } ;


 unsigned char BPDU_TYPE_TCN ;
 scalar_t__ BR_KERNEL_STP ;
 int br_send_bpdu (struct net_bridge_port*,unsigned char*,int) ;

void br_send_tcn_bpdu(struct net_bridge_port *p)
{
 unsigned char buf[4];

 if (p->br->stp_enabled != BR_KERNEL_STP)
  return;

 buf[0] = 0;
 buf[1] = 0;
 buf[2] = 0;
 buf[3] = BPDU_TYPE_TCN;
 br_send_bpdu(p, buf, 4);
}
