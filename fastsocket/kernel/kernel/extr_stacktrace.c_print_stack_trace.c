
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack_trace {int nr_entries; int * entries; } ;


 scalar_t__ WARN_ON (int) ;
 int print_ip_sym (int ) ;
 int printk (char*,int,char) ;

void print_stack_trace(struct stack_trace *trace, int spaces)
{
 int i;

 if (WARN_ON(!trace->entries))
  return;

 for (i = 0; i < trace->nr_entries; i++) {
  printk("%*c", 1 + spaces, ' ');
  print_ip_sym(trace->entries[i]);
 }
}
