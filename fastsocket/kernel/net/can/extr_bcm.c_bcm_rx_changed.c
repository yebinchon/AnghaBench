
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct can_frame {int can_dlc; } ;
struct bcm_op {int frames_filtered; int frames_abs; int can_id; int ival2; int ival1; int count; int flags; } ;
struct bcm_msg_head {int nframes; int can_id; int ival2; int ival1; int count; int flags; int opcode; } ;


 int BCM_CAN_DLC_MASK ;
 int RX_CHANGED ;
 int RX_RECV ;
 int ULONG_MAX ;
 int bcm_send_to_user (struct bcm_op*,struct bcm_msg_head*,struct can_frame*,int) ;

__attribute__((used)) static void bcm_rx_changed(struct bcm_op *op, struct can_frame *data)
{
 struct bcm_msg_head head;


 op->frames_filtered++;


 if (op->frames_filtered > ULONG_MAX/100)
  op->frames_filtered = op->frames_abs = 0;


 data->can_dlc &= (BCM_CAN_DLC_MASK|RX_RECV);

 head.opcode = RX_CHANGED;
 head.flags = op->flags;
 head.count = op->count;
 head.ival1 = op->ival1;
 head.ival2 = op->ival2;
 head.can_id = op->can_id;
 head.nframes = 1;

 bcm_send_to_user(op, &head, data, 1);
}
