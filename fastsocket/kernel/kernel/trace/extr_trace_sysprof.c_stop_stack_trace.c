
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sample_timer_lock ;
 int stop_stack_timers () ;
 scalar_t__ tracer_enabled ;

__attribute__((used)) static void stop_stack_trace(struct trace_array *tr)
{
 mutex_lock(&sample_timer_lock);
 stop_stack_timers();
 tracer_enabled = 0;
 mutex_unlock(&sample_timer_lock);
}
