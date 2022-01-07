
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ tv64; } ;
struct hrtimer {TYPE_1__* base; } ;
struct TYPE_6__ {TYPE_4__ interval; struct hrtimer timer; } ;
struct TYPE_7__ {TYPE_2__ real; } ;
struct k_itimer {unsigned int it_overrun; unsigned int it_overrun_last; int it_requeue_pending; TYPE_3__ it; } ;
struct TYPE_5__ {int (* get_time ) () ;} ;


 scalar_t__ hrtimer_forward (struct hrtimer*,int ,TYPE_4__) ;
 int hrtimer_restart (struct hrtimer*) ;
 int stub1 () ;

__attribute__((used)) static void schedule_next_timer(struct k_itimer *timr)
{
 struct hrtimer *timer = &timr->it.real.timer;

 if (timr->it.real.interval.tv64 == 0)
  return;

 timr->it_overrun += (unsigned int) hrtimer_forward(timer,
      timer->base->get_time(),
      timr->it.real.interval);

 timr->it_overrun_last = timr->it_overrun;
 timr->it_overrun = -1;
 ++timr->it_requeue_pending;
 hrtimer_restart(timer);
}
