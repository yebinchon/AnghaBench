
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qdisc_watchdog {TYPE_1__* qdisc; int timer; } ;
struct TYPE_2__ {int flags; } ;


 int TCQ_F_THROTTLED ;
 int hrtimer_cancel (int *) ;

void qdisc_watchdog_cancel(struct qdisc_watchdog *wd)
{
 hrtimer_cancel(&wd->timer);
 wd->qdisc->flags &= ~TCQ_F_THROTTLED;
}
