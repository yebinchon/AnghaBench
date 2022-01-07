
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef scalar_t__ rtx ;
struct TYPE_4__ {int stack_protect_guard; } ;
struct TYPE_3__ {int (* stack_protect_guard ) () ;} ;


 int DECL_RTL (int ) ;
 scalar_t__ HAVE_stack_protect_set ;
 TYPE_2__* cfun ;
 int emit_insn (scalar_t__) ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 scalar_t__ gen_stack_protect_set (scalar_t__,scalar_t__) ;
 int stub1 () ;
 TYPE_1__ targetm ;
 scalar_t__ validize_mem (int ) ;

void
stack_protect_prologue (void)
{
  tree guard_decl = targetm.stack_protect_guard ();
  rtx x, y;





  x = validize_mem (DECL_RTL (cfun->stack_protect_guard));
  y = validize_mem (DECL_RTL (guard_decl));



  if (HAVE_stack_protect_set)
    {
      rtx insn = gen_stack_protect_set (x, y);
      if (insn)
 {
   emit_insn (insn);
   return;
 }
    }


  emit_move_insn (x, y);
}
