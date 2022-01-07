
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int probe_sched_switch ;
 int probe_sched_wakeup ;
 int unregister_trace_sched_switch (int ) ;
 int unregister_trace_sched_wakeup (int ) ;
 int unregister_trace_sched_wakeup_new (int ) ;

__attribute__((used)) static void tracing_sched_unregister(void)
{
 unregister_trace_sched_switch(probe_sched_switch);
 unregister_trace_sched_wakeup_new(probe_sched_wakeup);
 unregister_trace_sched_wakeup(probe_sched_wakeup);
}
