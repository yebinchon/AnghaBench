
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aio_timeout {int p; scalar_t__ timed_out; int timer; } ;


 int current ;
 int setup_timer_on_stack (int *,int ,unsigned long) ;
 int timeout_func ;

__attribute__((used)) static inline void init_timeout(struct aio_timeout *to)
{
 setup_timer_on_stack(&to->timer, timeout_func, (unsigned long) to);
 to->timed_out = 0;
 to->p = current;
}
