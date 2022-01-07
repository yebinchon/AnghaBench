
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer {int dummy; } ;


 int cpu_relax () ;
 int hrtimer_try_to_cancel (struct hrtimer*) ;

int hrtimer_cancel(struct hrtimer *timer)
{
 for (;;) {
  int ret = hrtimer_try_to_cancel(timer);

  if (ret >= 0)
   return ret;
  cpu_relax();
 }
}
