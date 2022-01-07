
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 int tracing_stop_cmdline_record () ;
 int tracing_stop_function_trace () ;

__attribute__((used)) static void function_trace_reset(struct trace_array *tr)
{
 tracing_stop_function_trace();
 tracing_stop_cmdline_record();
}
