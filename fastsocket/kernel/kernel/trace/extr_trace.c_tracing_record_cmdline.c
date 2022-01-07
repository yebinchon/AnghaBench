
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 scalar_t__ atomic_read (int *) ;
 int trace_record_cmdline_disabled ;
 int trace_save_cmdline (struct task_struct*) ;
 int tracer_enabled ;
 int tracing_is_on () ;

void tracing_record_cmdline(struct task_struct *tsk)
{
 if (atomic_read(&trace_record_cmdline_disabled) || !tracer_enabled ||
     !tracing_is_on())
  return;

 trace_save_cmdline(tsk);
}
