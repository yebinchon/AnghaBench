
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sched_register_mutex ;
 scalar_t__ tracer_enabled ;
 int tracing_stop_sched_switch () ;

void tracing_stop_sched_switch_record(void)
{
 mutex_lock(&sched_register_mutex);
 tracer_enabled--;
 WARN_ON(tracer_enabled < 0);
 mutex_unlock(&sched_register_mutex);

 tracing_stop_sched_switch();
}
