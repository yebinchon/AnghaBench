
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iv_to_split {int base_var; } ;
typedef int rtx ;


 int copy_rtx (int ) ;
 int emit_insn_before (int ,int ) ;
 int emit_move_insn (int ,int ) ;
 int end_sequence () ;
 int force_operand (int ,int ) ;
 int get_insns () ;
 int * get_ivts_expr (int ,struct iv_to_split*) ;
 int single_set (int ) ;
 int start_sequence () ;

__attribute__((used)) static void
insert_base_initialization (struct iv_to_split *ivts, rtx insn)
{
  rtx expr = copy_rtx (*get_ivts_expr (single_set (insn), ivts));
  rtx seq;

  start_sequence ();
  expr = force_operand (expr, ivts->base_var);
  if (expr != ivts->base_var)
    emit_move_insn (ivts->base_var, expr);
  seq = get_insns ();
  end_sequence ();

  emit_insn_before (seq, insn);
}
