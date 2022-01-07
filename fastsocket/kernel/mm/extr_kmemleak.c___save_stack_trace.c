
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack_trace {int nr_entries; unsigned long* entries; int skip; int max_entries; } ;


 int MAX_TRACE ;
 int save_stack_trace (struct stack_trace*) ;

__attribute__((used)) static int __save_stack_trace(unsigned long *trace)
{
 struct stack_trace stack_trace;

 stack_trace.max_entries = MAX_TRACE;
 stack_trace.nr_entries = 0;
 stack_trace.entries = trace;
 stack_trace.skip = 2;
 save_stack_trace(&stack_trace);

 return stack_trace.nr_entries;
}
