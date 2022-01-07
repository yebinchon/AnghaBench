
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_iterator {int dummy; } ;


 int DEFINE_WAIT (int ) ;
 int TASK_INTERRUPTIBLE ;
 int finish_wait (int *,int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 scalar_t__ trace_empty (struct trace_iterator*) ;
 int trace_wait ;
 int wait ;

void default_wait_pipe(struct trace_iterator *iter)
{
 DEFINE_WAIT(wait);

 prepare_to_wait(&trace_wait, &wait, TASK_INTERRUPTIBLE);

 if (trace_empty(iter))
  schedule();

 finish_wait(&trace_wait, &wait);
}
