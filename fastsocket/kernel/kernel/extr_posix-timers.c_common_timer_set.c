
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ tv64; } ;
struct hrtimer {TYPE_3__* base; int function; } ;
struct TYPE_7__ {TYPE_4__ interval; struct hrtimer timer; } ;
struct TYPE_8__ {TYPE_1__ real; } ;
struct k_itimer {int it_requeue_pending; int it_sigev_notify; TYPE_2__ it; int it_clock; scalar_t__ it_overrun_last; } ;
struct TYPE_11__ {int tv_nsec; int tv_sec; } ;
struct itimerspec {TYPE_5__ it_interval; TYPE_5__ it_value; } ;
typedef enum hrtimer_mode { ____Placeholder_hrtimer_mode } hrtimer_mode ;
struct TYPE_9__ {int (* get_time ) () ;} ;


 int HRTIMER_MODE_ABS ;
 int HRTIMER_MODE_REL ;
 int REQUEUE_PENDING ;
 int SIGEV_NONE ;
 int SIGEV_THREAD_ID ;
 int TIMER_ABSTIME ;
 int TIMER_RETRY ;
 int common_timer_get (struct k_itimer*,struct itimerspec*) ;
 int hrtimer_add_expires (struct hrtimer*,int ) ;
 int hrtimer_init (struct hrtimer*,int ,int) ;
 int hrtimer_set_expires (struct hrtimer*,TYPE_4__) ;
 int hrtimer_start_expires (struct hrtimer*,int) ;
 scalar_t__ hrtimer_try_to_cancel (struct hrtimer*) ;
 int posix_timer_fn ;
 int stub1 () ;
 TYPE_4__ timespec_to_ktime (TYPE_5__) ;

__attribute__((used)) static int
common_timer_set(struct k_itimer *timr, int flags,
   struct itimerspec *new_setting, struct itimerspec *old_setting)
{
 struct hrtimer *timer = &timr->it.real.timer;
 enum hrtimer_mode mode;

 if (old_setting)
  common_timer_get(timr, old_setting);


 timr->it.real.interval.tv64 = 0;




 if (hrtimer_try_to_cancel(timer) < 0)
  return TIMER_RETRY;

 timr->it_requeue_pending = (timr->it_requeue_pending + 2) &
  ~REQUEUE_PENDING;
 timr->it_overrun_last = 0;


 if (!new_setting->it_value.tv_sec && !new_setting->it_value.tv_nsec)
  return 0;

 mode = flags & TIMER_ABSTIME ? HRTIMER_MODE_ABS : HRTIMER_MODE_REL;
 hrtimer_init(&timr->it.real.timer, timr->it_clock, mode);
 timr->it.real.timer.function = posix_timer_fn;

 hrtimer_set_expires(timer, timespec_to_ktime(new_setting->it_value));


 timr->it.real.interval = timespec_to_ktime(new_setting->it_interval);


 if (((timr->it_sigev_notify & ~SIGEV_THREAD_ID) == SIGEV_NONE)) {

  if (mode == HRTIMER_MODE_REL) {
   hrtimer_add_expires(timer, timer->base->get_time());
  }
  return 0;
 }

 hrtimer_start_expires(timer, mode);
 return 0;
}
