
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 int clear_pending_stack_adjust () ;
 int do_pending_stack_adjust () ;
 int emit_jump (scalar_t__) ;
 scalar_t__ gen_label_rtx () ;
 scalar_t__ naked_return_label ;

void
expand_naked_return (void)
{
  rtx end_label;

  clear_pending_stack_adjust ();
  do_pending_stack_adjust ();

  end_label = naked_return_label;
  if (end_label == 0)
    end_label = naked_return_label = gen_label_rtx ();

  emit_jump (end_label);
}
