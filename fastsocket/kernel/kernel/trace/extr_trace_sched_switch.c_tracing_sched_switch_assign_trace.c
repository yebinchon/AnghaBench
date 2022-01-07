
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 struct trace_array* ctx_trace ;

void tracing_sched_switch_assign_trace(struct trace_array *tr)
{
 ctx_trace = tr;
}
