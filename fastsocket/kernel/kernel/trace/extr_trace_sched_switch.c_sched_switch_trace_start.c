
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 scalar_t__ sched_stopped ;

__attribute__((used)) static void sched_switch_trace_start(struct trace_array *tr)
{
 sched_stopped = 0;
}
