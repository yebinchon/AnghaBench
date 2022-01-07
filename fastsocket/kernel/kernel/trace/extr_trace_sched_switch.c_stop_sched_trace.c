
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 int tracing_stop_sched_switch_record () ;

__attribute__((used)) static void stop_sched_trace(struct trace_array *tr)
{
 tracing_stop_sched_switch_record();
}
