
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON (int) ;
 int ctx_trace ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sched_register_mutex ;
 int tracer_enabled ;
 int tracing_start_sched_switch () ;
 scalar_t__ unlikely (int) ;

void tracing_start_sched_switch_record(void)
{
 if (unlikely(!ctx_trace)) {
  WARN_ON(1);
  return;
 }

 tracing_start_sched_switch();

 mutex_lock(&sched_register_mutex);
 tracer_enabled++;
 mutex_unlock(&sched_register_mutex);
}
