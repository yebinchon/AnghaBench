
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qdisc_watchdog {int timer; TYPE_2__* qdisc; } ;
typedef int psched_time_t ;
typedef int ktime_t ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int state; } ;


 int HRTIMER_MODE_ABS ;
 int PSCHED_TICKS2NS (int ) ;
 int TCQ_F_THROTTLED ;
 int __QDISC_STATE_DEACTIVATED ;
 int hrtimer_start (int *,int ,int ) ;
 int ktime_add_ns (int ,int ) ;
 int ktime_set (int ,int ) ;
 TYPE_1__* qdisc_root_sleeping (TYPE_2__*) ;
 scalar_t__ test_bit (int ,int *) ;

void qdisc_watchdog_schedule(struct qdisc_watchdog *wd, psched_time_t expires)
{
 ktime_t time;

 if (test_bit(__QDISC_STATE_DEACTIVATED,
       &qdisc_root_sleeping(wd->qdisc)->state))
  return;

 wd->qdisc->flags |= TCQ_F_THROTTLED;
 time = ktime_set(0, 0);
 time = ktime_add_ns(time, PSCHED_TICKS2NS(expires));
 hrtimer_start(&wd->timer, time, HRTIMER_MODE_ABS);
}
