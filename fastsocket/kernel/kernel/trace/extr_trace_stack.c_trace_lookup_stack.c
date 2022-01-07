
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,void*) ;
 unsigned long* stack_dump_trace ;

__attribute__((used)) static int trace_lookup_stack(struct seq_file *m, long i)
{
 unsigned long addr = stack_dump_trace[i];

 return seq_printf(m, "%pF\n", (void *)addr);
}
