
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef scalar_t__ rtx ;
struct TYPE_4__ {int stack_protect_guard; } ;
struct TYPE_3__ {int (* stack_protect_fail ) () ;int (* stack_protect_guard ) () ;} ;


 int DECL_RTL (int ) ;
 int EQ ;
 scalar_t__ HAVE_stack_protect_test ;
 scalar_t__ JUMP_P (scalar_t__) ;
 int NULL_RTX ;
 int PRED_NORETURN ;
 int TAKEN ;
 TYPE_2__* cfun ;
 int emit_cmp_and_jump_insns (scalar_t__,scalar_t__,int ,int ,int ,int,scalar_t__) ;
 int emit_insn (scalar_t__) ;
 int emit_label (scalar_t__) ;
 int expand_expr_stmt (int ) ;
 scalar_t__ gen_label_rtx () ;
 scalar_t__ gen_stack_protect_test (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ get_last_insn () ;
 int predict_insn_def (scalar_t__,int ,int ) ;
 int ptr_mode ;
 int stub1 () ;
 int stub2 () ;
 TYPE_1__ targetm ;
 scalar_t__ validize_mem (int ) ;

void
stack_protect_epilogue (void)
{
  tree guard_decl = targetm.stack_protect_guard ();
  rtx label = gen_label_rtx ();
  rtx x, y, tmp;





  x = validize_mem (DECL_RTL (cfun->stack_protect_guard));
  y = validize_mem (DECL_RTL (guard_decl));



  if (HAVE_stack_protect_test != 0)
    {
      tmp = gen_stack_protect_test (x, y, label);
      if (tmp)
 {
   emit_insn (tmp);
   goto done;
 }
    }

  emit_cmp_and_jump_insns (x, y, EQ, NULL_RTX, ptr_mode, 1, label);
 done:






  tmp = get_last_insn ();
  if (JUMP_P (tmp))
    predict_insn_def (tmp, PRED_NORETURN, TAKEN);

  expand_expr_stmt (targetm.stack_protect_fail ());
  emit_label (label);
}
