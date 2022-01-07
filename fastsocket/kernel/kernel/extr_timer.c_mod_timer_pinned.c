
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {unsigned long expires; } ;


 int TIMER_PINNED ;
 int __mod_timer (struct timer_list*,unsigned long,int,int ) ;
 scalar_t__ timer_pending (struct timer_list*) ;

int mod_timer_pinned(struct timer_list *timer, unsigned long expires)
{
 if (timer->expires == expires && timer_pending(timer))
  return 1;

 return __mod_timer(timer, expires, 0, TIMER_PINNED);
}
