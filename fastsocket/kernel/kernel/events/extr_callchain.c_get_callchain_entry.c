
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_callchain_entry {int dummy; } ;
struct callchain_cpus_entries {struct perf_callchain_entry** cpu_entries; } ;


 int __get_cpu_var (int ) ;
 int callchain_cpus_entries ;
 int callchain_recursion ;
 int get_recursion_context (int ) ;
 struct callchain_cpus_entries* rcu_dereference (int ) ;
 int smp_processor_id () ;

__attribute__((used)) static struct perf_callchain_entry *get_callchain_entry(int *rctx)
{
 int cpu;
 struct callchain_cpus_entries *entries;

 *rctx = get_recursion_context(__get_cpu_var(callchain_recursion));
 if (*rctx == -1)
  return ((void*)0);

 entries = rcu_dereference(callchain_cpus_entries);
 if (!entries)
  return ((void*)0);

 cpu = smp_processor_id();

 return &entries->cpu_entries[cpu][*rctx];
}
