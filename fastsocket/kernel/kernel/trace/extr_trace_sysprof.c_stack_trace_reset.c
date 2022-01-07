
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 int stop_stack_trace (struct trace_array*) ;
 int tracing_stop_cmdline_record () ;

__attribute__((used)) static void stack_trace_reset(struct trace_array *tr)
{
 tracing_stop_cmdline_record();
 stop_stack_trace(tr);
}
