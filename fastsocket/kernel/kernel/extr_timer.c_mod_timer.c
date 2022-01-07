
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {unsigned long expires; } ;


 int TIMER_NOT_PINNED ;
 int __mod_timer (struct timer_list*,unsigned long,int,int ) ;
 scalar_t__ timer_pending (struct timer_list*) ;

int mod_timer(struct timer_list *timer, unsigned long expires)
{





 if (timer_pending(timer) && timer->expires == expires)
  return 1;

 return __mod_timer(timer, expires, 0, TIMER_NOT_PINNED);
}
