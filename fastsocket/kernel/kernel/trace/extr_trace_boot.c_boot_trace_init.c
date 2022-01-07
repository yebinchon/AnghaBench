
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 struct trace_array* boot_trace ;
 int tracing_reset_online_cpus (struct trace_array*) ;
 int tracing_sched_switch_assign_trace (struct trace_array*) ;

__attribute__((used)) static int boot_trace_init(struct trace_array *tr)
{
 boot_trace = tr;

 if (!tr)
  return 0;

 tracing_reset_online_cpus(tr);

 tracing_sched_switch_assign_trace(tr);
 return 0;
}
