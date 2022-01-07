
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sequence_stack {scalar_t__ last; struct sequence_stack* next; } ;
typedef scalar_t__ rtx ;


 scalar_t__ last_insn ;
 struct sequence_stack* seq_stack ;

rtx
get_last_insn_anywhere (void)
{
  struct sequence_stack *stack;
  if (last_insn)
    return last_insn;
  for (stack = seq_stack; stack; stack = stack->next)
    if (stack->last != 0)
      return stack->last;
  return 0;
}
