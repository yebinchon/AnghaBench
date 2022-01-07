
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int tv_sec; int tv_usec; } ;
struct TYPE_3__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct itimerval {TYPE_2__ it_value; TYPE_1__ it_interval; } ;


 unsigned int INT_MAX ;
 int ITIMER_REAL ;
 int do_setitimer (int ,struct itimerval*,struct itimerval*) ;

unsigned int alarm_setitimer(unsigned int seconds)
{
 struct itimerval it_new, it_old;


 if (seconds > INT_MAX)
  seconds = INT_MAX;

 it_new.it_value.tv_sec = seconds;
 it_new.it_value.tv_usec = 0;
 it_new.it_interval.tv_sec = it_new.it_interval.tv_usec = 0;

 do_setitimer(ITIMER_REAL, &it_new, &it_old);





 if ((!it_old.it_value.tv_sec && it_old.it_value.tv_usec) ||
       it_old.it_value.tv_usec >= 500000)
  it_old.it_value.tv_sec++;

 return it_old.it_value.tv_sec;
}
