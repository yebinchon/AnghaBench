
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;


 int Pmode ;
 int convert_memory_address (int ,int ) ;
 int do_pending_stack_adjust () ;
 int emit_indirect_jump (int ) ;
 int expand_normal (int ) ;

void
expand_computed_goto (tree exp)
{
  rtx x = expand_normal (exp);

  x = convert_memory_address (Pmode, x);

  do_pending_stack_adjust ();
  emit_indirect_jump (x);
}
