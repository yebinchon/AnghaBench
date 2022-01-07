
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sample_timer_lock ;
 int start_stack_timers () ;
 struct trace_array* sysprof_trace ;
 int tracer_enabled ;
 int tracing_start_cmdline_record () ;

__attribute__((used)) static int stack_trace_init(struct trace_array *tr)
{
 sysprof_trace = tr;

 tracing_start_cmdline_record();

 mutex_lock(&sample_timer_lock);
 start_stack_timers();
 tracer_enabled = 1;
 mutex_unlock(&sample_timer_lock);
 return 0;
}
