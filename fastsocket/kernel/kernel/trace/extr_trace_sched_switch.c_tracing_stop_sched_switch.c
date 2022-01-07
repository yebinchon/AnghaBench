
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sched_ref ;
 int sched_register_mutex ;
 int tracing_sched_unregister () ;

__attribute__((used)) static void tracing_stop_sched_switch(void)
{
 mutex_lock(&sched_register_mutex);
 if (!(--sched_ref))
  tracing_sched_unregister();
 mutex_unlock(&sched_register_mutex);
}
