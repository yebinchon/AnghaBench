
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sequence_stack {scalar_t__ last; scalar_t__ first; struct sequence_stack* next; } ;


 scalar_t__ first_insn ;
 struct sequence_stack* free_sequence_stack ;
 struct sequence_stack* ggc_alloc (int) ;
 scalar_t__ last_insn ;
 struct sequence_stack* seq_stack ;

void
start_sequence (void)
{
  struct sequence_stack *tem;

  if (free_sequence_stack != ((void*)0))
    {
      tem = free_sequence_stack;
      free_sequence_stack = tem->next;
    }
  else
    tem = ggc_alloc (sizeof (struct sequence_stack));

  tem->next = seq_stack;
  tem->first = first_insn;
  tem->last = last_insn;

  seq_stack = tem;

  first_insn = 0;
  last_insn = 0;
}
