
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_iterator {int dummy; } ;


 int HZ ;
 int TASK_INTERRUPTIBLE ;
 int schedule_timeout (int) ;
 int set_current_state (int ) ;

void poll_wait_pipe(struct trace_iterator *iter)
{
 set_current_state(TASK_INTERRUPTIBLE);

 schedule_timeout(HZ / 10);
}
