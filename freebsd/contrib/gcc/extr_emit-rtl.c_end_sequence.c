
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sequence_stack {struct sequence_stack* next; int last; int first; } ;


 int first_insn ;
 struct sequence_stack* free_sequence_stack ;
 int last_insn ;
 int memset (struct sequence_stack*,int ,int) ;
 struct sequence_stack* seq_stack ;

void
end_sequence (void)
{
  struct sequence_stack *tem = seq_stack;

  first_insn = tem->first;
  last_insn = tem->last;
  seq_stack = tem->next;

  memset (tem, 0, sizeof (*tem));
  tem->next = free_sequence_stack;
  free_sequence_stack = tem;
}
