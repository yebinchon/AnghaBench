
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 scalar_t__ sched_ref ;
 int stop_sched_trace (struct trace_array*) ;

__attribute__((used)) static void sched_switch_trace_reset(struct trace_array *tr)
{
 if (sched_ref)
  stop_sched_trace(tr);
}
