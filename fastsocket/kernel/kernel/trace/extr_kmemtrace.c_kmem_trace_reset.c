
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 int kmemtrace_stop_probes () ;

__attribute__((used)) static void kmem_trace_reset(struct trace_array *tr)
{
 kmemtrace_stop_probes();
}
