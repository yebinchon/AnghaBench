
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sequence_stack {int last; int first; struct sequence_stack* next; } ;


 int first_insn ;
 int last_insn ;
 struct sequence_stack* seq_stack ;
 int start_sequence () ;

void
push_topmost_sequence (void)
{
  struct sequence_stack *stack, *top = ((void*)0);

  start_sequence ();

  for (stack = seq_stack; stack; stack = stack->next)
    top = stack;

  first_insn = top->first;
  last_insn = top->last;
}
