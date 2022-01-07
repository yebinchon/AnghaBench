
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct can_frame {int can_dlc; } ;
struct TYPE_7__ {int tv64; } ;
struct TYPE_8__ {int tv64; } ;
struct bcm_op {TYPE_1__ kt_lastmsg; TYPE_3__ kt_ival2; int thrtimer; } ;


 int CFSIZ ;
 int HRTIMER_MODE_ABS ;
 int RX_RECV ;
 int RX_THR ;
 int bcm_rx_changed (struct bcm_op*,struct can_frame*) ;
 scalar_t__ hrtimer_active (int *) ;
 int hrtimer_start (int *,int ,int ) ;
 int ktime_add (TYPE_1__,TYPE_3__) ;
 TYPE_1__ ktime_get () ;
 scalar_t__ ktime_to_us (TYPE_3__) ;
 scalar_t__ ktime_us_delta (TYPE_1__,TYPE_1__) ;
 int memcpy (struct can_frame*,struct can_frame const*,int ) ;

__attribute__((used)) static void bcm_rx_update_and_send(struct bcm_op *op,
       struct can_frame *lastdata,
       const struct can_frame *rxdata)
{
 memcpy(lastdata, rxdata, CFSIZ);


 lastdata->can_dlc |= (RX_RECV|RX_THR);


 if (!op->kt_ival2.tv64) {

  bcm_rx_changed(op, lastdata);
  return;
 }


 if (hrtimer_active(&op->thrtimer))
  return;


 if (!op->kt_lastmsg.tv64)
  goto rx_changed_settime;


 if (ktime_us_delta(ktime_get(), op->kt_lastmsg) <
     ktime_to_us(op->kt_ival2)) {

  hrtimer_start(&op->thrtimer,
         ktime_add(op->kt_lastmsg, op->kt_ival2),
         HRTIMER_MODE_ABS);
  return;
 }


rx_changed_settime:
 bcm_rx_changed(op, lastdata);
 op->kt_lastmsg = ktime_get();
}
