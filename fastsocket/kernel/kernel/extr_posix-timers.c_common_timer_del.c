
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tv64; } ;
struct TYPE_5__ {int timer; TYPE_1__ interval; } ;
struct TYPE_6__ {TYPE_2__ real; } ;
struct k_itimer {TYPE_3__ it; } ;


 int TIMER_RETRY ;
 scalar_t__ hrtimer_try_to_cancel (int *) ;

__attribute__((used)) static int common_timer_del(struct k_itimer *timer)
{
 timer->it.real.interval.tv64 = 0;

 if (hrtimer_try_to_cancel(&timer->it.real.timer) < 0)
  return TIMER_RETRY;
 return 0;
}
