
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 struct trace_array* kmemtrace_array ;
 int kmemtrace_start_probes () ;
 int tracing_reset_online_cpus (struct trace_array*) ;

__attribute__((used)) static int kmem_trace_init(struct trace_array *tr)
{
 kmemtrace_array = tr;

 tracing_reset_online_cpus(tr);

 kmemtrace_start_probes();

 return 0;
}
