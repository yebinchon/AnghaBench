
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context_stack {int dummy; } ;


 struct context_stack* context_stack ;
 size_t context_stack_depth ;
 int gdb_assert (int) ;

struct context_stack *
pop_context (void)
{
  gdb_assert (context_stack_depth > 0);
  return (&context_stack[--context_stack_depth]);
}
