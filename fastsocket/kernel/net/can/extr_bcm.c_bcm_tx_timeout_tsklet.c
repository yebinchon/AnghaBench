
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tv64; } ;
struct bcm_op {scalar_t__ count; int flags; TYPE_1__ kt_ival2; int timer; TYPE_1__ kt_ival1; int can_id; int ival2; int ival1; } ;
struct bcm_msg_head {int flags; scalar_t__ count; scalar_t__ nframes; int can_id; int ival2; int ival1; int opcode; } ;


 int HRTIMER_MODE_ABS ;
 int TX_COUNTEVT ;
 int TX_EXPIRED ;
 int bcm_can_tx (struct bcm_op*) ;
 int bcm_send_to_user (struct bcm_op*,struct bcm_msg_head*,int *,int ) ;
 int hrtimer_start (int *,int ,int ) ;
 int ktime_add (int ,TYPE_1__) ;
 int ktime_get () ;

__attribute__((used)) static void bcm_tx_timeout_tsklet(unsigned long data)
{
 struct bcm_op *op = (struct bcm_op *)data;
 struct bcm_msg_head msg_head;

 if (op->kt_ival1.tv64 && (op->count > 0)) {

  op->count--;
  if (!op->count && (op->flags & TX_COUNTEVT)) {


   msg_head.opcode = TX_EXPIRED;
   msg_head.flags = op->flags;
   msg_head.count = op->count;
   msg_head.ival1 = op->ival1;
   msg_head.ival2 = op->ival2;
   msg_head.can_id = op->can_id;
   msg_head.nframes = 0;

   bcm_send_to_user(op, &msg_head, ((void*)0), 0);
  }
 }

 if (op->kt_ival1.tv64 && (op->count > 0)) {


  bcm_can_tx(op);
  hrtimer_start(&op->timer,
         ktime_add(ktime_get(), op->kt_ival1),
         HRTIMER_MODE_ABS);

 } else {
  if (op->kt_ival2.tv64) {


   bcm_can_tx(op);
   hrtimer_start(&op->timer,
          ktime_add(ktime_get(), op->kt_ival2),
          HRTIMER_MODE_ABS);
  }
 }
}
