
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_op {int can_id; int ival2; int ival1; int count; int flags; } ;
struct bcm_msg_head {scalar_t__ nframes; int can_id; int ival2; int ival1; int count; int flags; int opcode; } ;


 int RX_TIMEOUT ;
 int bcm_send_to_user (struct bcm_op*,struct bcm_msg_head*,int *,int ) ;

__attribute__((used)) static void bcm_rx_timeout_tsklet(unsigned long data)
{
 struct bcm_op *op = (struct bcm_op *)data;
 struct bcm_msg_head msg_head;


 msg_head.opcode = RX_TIMEOUT;
 msg_head.flags = op->flags;
 msg_head.count = op->count;
 msg_head.ival1 = op->ival1;
 msg_head.ival2 = op->ival2;
 msg_head.can_id = op->can_id;
 msg_head.nframes = 0;

 bcm_send_to_user(op, &msg_head, ((void*)0), 0);
}
