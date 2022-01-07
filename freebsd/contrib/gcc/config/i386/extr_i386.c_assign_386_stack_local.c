
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack_local_entry {int mode; int n; int rtl; struct stack_local_entry* next; } ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef enum ix86_stack_slot { ____Placeholder_ix86_stack_slot } ix86_stack_slot ;


 int GET_MODE_SIZE (int) ;
 int MAX_386_STACK_LOCALS ;
 int SLOT_VIRTUAL ;
 int assign_stack_local (int,int ,int ) ;
 int gcc_assert (int) ;
 scalar_t__ ggc_alloc (int) ;
 struct stack_local_entry* ix86_stack_locals ;
 int virtuals_instantiated ;

rtx
assign_386_stack_local (enum machine_mode mode, enum ix86_stack_slot n)
{
  struct stack_local_entry *s;

  gcc_assert (n < MAX_386_STACK_LOCALS);


  gcc_assert ((n == SLOT_VIRTUAL) == !virtuals_instantiated);

  for (s = ix86_stack_locals; s; s = s->next)
    if (s->mode == mode && s->n == n)
      return s->rtl;

  s = (struct stack_local_entry *)
    ggc_alloc (sizeof (struct stack_local_entry));
  s->n = n;
  s->mode = mode;
  s->rtl = assign_stack_local (mode, GET_MODE_SIZE (mode), 0);

  s->next = ix86_stack_locals;
  ix86_stack_locals = s;
  return s->rtl;
}
