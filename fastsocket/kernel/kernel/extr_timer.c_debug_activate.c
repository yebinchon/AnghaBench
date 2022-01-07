
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 int debug_timer_activate (struct timer_list*) ;
 int trace_timer_start (struct timer_list*,unsigned long) ;

__attribute__((used)) static inline void
debug_activate(struct timer_list *timer, unsigned long expires)
{
 debug_timer_activate(timer);
 trace_timer_start(timer, expires);
}
