
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 int dbg (char*,struct timer_list*) ;

__attribute__((used)) static inline void k_term_timer(struct timer_list *timer)
{
 dbg("terminating timer %p\n", timer);
}
