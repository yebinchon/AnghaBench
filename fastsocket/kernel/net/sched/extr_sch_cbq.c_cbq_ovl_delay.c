
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cbq_sched_data {int now; int pmask; int wd_expires; int delay_timer; } ;
struct TYPE_3__ {int overactions; } ;
struct cbq_class {int undertime; int delayed; int avgidle; int ewma_log; int minidle; int penalized; int cpriority; TYPE_1__ xstats; scalar_t__ penalty; scalar_t__ offtime; int qdisc; } ;
typedef int psched_time_t ;
typedef int psched_tdiff_t ;
typedef int ktime_t ;
struct TYPE_4__ {int state; } ;


 int PSCHED_TICKS2NS (int) ;
 int TC_CBQ_MAXPRIO ;
 int __QDISC_STATE_DEACTIVATED ;
 int hrtimer_get_expires (int *) ;
 int hrtimer_restart (int *) ;
 int hrtimer_set_expires (int *,int ) ;
 scalar_t__ hrtimer_try_to_cancel (int *) ;
 int ktime_add_ns (int ,int ) ;
 int ktime_set (int ,int ) ;
 int ktime_sub (int ,int ) ;
 scalar_t__ ktime_to_ns (int ) ;
 struct cbq_sched_data* qdisc_priv (int ) ;
 TYPE_2__* qdisc_root_sleeping (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void cbq_ovl_delay(struct cbq_class *cl)
{
 struct cbq_sched_data *q = qdisc_priv(cl->qdisc);
 psched_tdiff_t delay = cl->undertime - q->now;

 if (test_bit(__QDISC_STATE_DEACTIVATED,
       &qdisc_root_sleeping(cl->qdisc)->state))
  return;

 if (!cl->delayed) {
  psched_time_t sched = q->now;
  ktime_t expires;

  delay += cl->offtime;
  if (cl->avgidle < 0)
   delay -= (-cl->avgidle) - ((-cl->avgidle) >> cl->ewma_log);
  if (cl->avgidle < cl->minidle)
   cl->avgidle = cl->minidle;
  cl->undertime = q->now + delay;

  if (delay > 0) {
   sched += delay + cl->penalty;
   cl->penalized = sched;
   cl->cpriority = TC_CBQ_MAXPRIO;
   q->pmask |= (1<<TC_CBQ_MAXPRIO);

   expires = ktime_set(0, 0);
   expires = ktime_add_ns(expires, PSCHED_TICKS2NS(sched));
   if (hrtimer_try_to_cancel(&q->delay_timer) &&
       ktime_to_ns(ktime_sub(
     hrtimer_get_expires(&q->delay_timer),
     expires)) > 0)
    hrtimer_set_expires(&q->delay_timer, expires);
   hrtimer_restart(&q->delay_timer);
   cl->delayed = 1;
   cl->xstats.overactions++;
   return;
  }
  delay = 1;
 }
 if (q->wd_expires == 0 || q->wd_expires > delay)
  q->wd_expires = delay;
}
