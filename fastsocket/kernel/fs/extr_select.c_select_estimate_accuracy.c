
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct TYPE_3__ {unsigned long timer_slack_ns; } ;


 unsigned long __estimate_accuracy (struct timespec*) ;
 TYPE_1__* current ;
 int ktime_get_ts (struct timespec*) ;
 scalar_t__ rt_task (TYPE_1__*) ;
 struct timespec timespec_sub (struct timespec,struct timespec) ;

long select_estimate_accuracy(struct timespec *tv)
{
 unsigned long ret;
 struct timespec now;





 if (rt_task(current))
  return 0;

 ktime_get_ts(&now);
 now = timespec_sub(*tv, now);
 ret = __estimate_accuracy(&now);
 if (ret < current->timer_slack_ns)
  return current->timer_slack_ns;
 return ret;
}
