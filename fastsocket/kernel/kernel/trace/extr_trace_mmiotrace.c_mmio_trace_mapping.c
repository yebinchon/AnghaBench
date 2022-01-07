
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array_cpu {int dummy; } ;
struct trace_array {struct trace_array_cpu** data; } ;
struct mmiotrace_map {int dummy; } ;


 int __trace_mmiotrace_map (struct trace_array*,struct trace_array_cpu*,struct mmiotrace_map*) ;
 struct trace_array* mmio_trace_array ;
 int preempt_disable () ;
 int preempt_enable () ;
 size_t smp_processor_id () ;

void mmio_trace_mapping(struct mmiotrace_map *map)
{
 struct trace_array *tr = mmio_trace_array;
 struct trace_array_cpu *data;

 preempt_disable();
 data = tr->data[smp_processor_id()];
 __trace_mmiotrace_map(tr, data, map);
 preempt_enable();
}
