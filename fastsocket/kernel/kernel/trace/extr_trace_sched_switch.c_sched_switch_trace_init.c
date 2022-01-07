
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 struct trace_array* ctx_trace ;
 int tracing_reset_online_cpus (struct trace_array*) ;
 int tracing_start_sched_switch_record () ;

__attribute__((used)) static int sched_switch_trace_init(struct trace_array *tr)
{
 ctx_trace = tr;
 tracing_reset_online_cpus(tr);
 tracing_start_sched_switch_record();
 return 0;
}
