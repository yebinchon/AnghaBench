
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct hrtimer {int dummy; } ;
struct TYPE_4__ {scalar_t__ tv64; } ;
typedef TYPE_1__ ktime_t ;


 scalar_t__ NSEC_PER_USEC ;
 scalar_t__ hrtimer_active (struct hrtimer*) ;
 TYPE_1__ hrtimer_get_remaining (struct hrtimer*) ;
 struct timeval ktime_to_timeval (TYPE_1__) ;

__attribute__((used)) static struct timeval itimer_get_remtime(struct hrtimer *timer)
{
 ktime_t rem = hrtimer_get_remaining(timer);






 if (hrtimer_active(timer)) {
  if (rem.tv64 <= 0)
   rem.tv64 = NSEC_PER_USEC;
 } else
  rem.tv64 = 0;

 return ktime_to_timeval(rem);
}
