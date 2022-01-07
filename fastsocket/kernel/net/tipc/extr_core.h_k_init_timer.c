
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
typedef int Handler ;


 int dbg (char*,struct timer_list*) ;
 int setup_timer (struct timer_list*,int ,unsigned long) ;

__attribute__((used)) static inline void k_init_timer(struct timer_list *timer, Handler routine,
    unsigned long argument)
{
 dbg("initializing timer %p\n", timer);
 setup_timer(timer, routine, argument);
}
