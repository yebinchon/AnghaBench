
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tv64; } ;
struct bcm_op {int flags; TYPE_1__ kt_ival1; int timer; } ;


 int HRTIMER_MODE_REL ;
 int RX_NO_AUTOTIMER ;
 int hrtimer_start (int *,TYPE_1__,int ) ;

__attribute__((used)) static void bcm_rx_starttimer(struct bcm_op *op)
{
 if (op->flags & RX_NO_AUTOTIMER)
  return;

 if (op->kt_ival1.tv64)
  hrtimer_start(&op->timer, op->kt_ival1, HRTIMER_MODE_REL);
}
