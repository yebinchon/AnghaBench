
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int cpu; } ;


 struct trace_array* func_trace ;
 int get_cpu () ;
 int put_cpu () ;
 int tracing_start_cmdline_record () ;
 int tracing_start_function_trace () ;

__attribute__((used)) static int function_trace_init(struct trace_array *tr)
{
 func_trace = tr;
 tr->cpu = get_cpu();
 put_cpu();

 tracing_start_cmdline_record();
 tracing_start_function_trace();
 return 0;
}
