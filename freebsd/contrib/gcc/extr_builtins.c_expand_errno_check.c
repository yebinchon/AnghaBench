
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;


 int EQ ;
 int GEN_ERRNO_RTX ;
 int GEN_INT (int ) ;
 int GET_MODE (int ) ;
 int NO_DEFER_POP ;
 int OK_DEFER_POP ;
 int Pmode ;
 int TARGET_EDOM ;
 scalar_t__ TREE_NOTHROW (int ) ;
 int TREE_OPERAND (int ,int ) ;
 int emit_cmp_and_jump_insns (int ,int ,int ,int ,int ,int ,int ) ;
 int emit_label (int ) ;
 int emit_move_insn (int ,int ) ;
 int expand_call (int ,int ,int ) ;
 int gen_label_rtx () ;
 int gen_rtx_MEM (int ,int ) ;
 int gen_rtx_SYMBOL_REF (int ,char*) ;
 int word_mode ;

__attribute__((used)) static void
expand_errno_check (tree exp, rtx target)
{
  rtx lab = gen_label_rtx ();



  emit_cmp_and_jump_insns (target, target, EQ, 0, GET_MODE (target),
      0, lab);
  NO_DEFER_POP;
  expand_call (exp, target, 0);
  OK_DEFER_POP;
  emit_label (lab);
}
