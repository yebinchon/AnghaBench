
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 int dbg (char*,struct timer_list*) ;
 int del_timer_sync (struct timer_list*) ;

__attribute__((used)) static inline void k_cancel_timer(struct timer_list *timer)
{
 dbg("cancelling timer %p\n", timer);
 del_timer_sync(timer);
}
