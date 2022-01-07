
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int do_pending_stack_adjust () ;
 int emit_barrier () ;
 int emit_jump_insn (int ) ;
 int gen_jump (int ) ;

void
emit_jump (rtx label)
{
  do_pending_stack_adjust ();
  emit_jump_insn (gen_jump (label));
  emit_barrier ();
}
