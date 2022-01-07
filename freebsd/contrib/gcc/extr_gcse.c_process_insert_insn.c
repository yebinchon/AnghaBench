
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expr {int expr; int reaching_reg; } ;
typedef int rtx ;


 int GET_MODE (int ) ;
 int VOIDmode ;
 int copy_rtx (int ) ;
 int emit_insn (int ) ;
 int emit_move_insn (int ,int ) ;
 int end_sequence () ;
 int gcc_unreachable () ;
 int gen_rtx_SET (int ,int ,int ) ;
 scalar_t__ general_operand (int ,int ) ;
 int get_insns () ;
 scalar_t__ insn_invalid_p (int ) ;
 int start_sequence () ;

__attribute__((used)) static rtx
process_insert_insn (struct expr *expr)
{
  rtx reg = expr->reaching_reg;
  rtx exp = copy_rtx (expr->expr);
  rtx pat;

  start_sequence ();



  if (general_operand (exp, GET_MODE (reg)))
    emit_move_insn (reg, exp);




  else
    {
      rtx insn = emit_insn (gen_rtx_SET (VOIDmode, reg, exp));

      if (insn_invalid_p (insn))
 gcc_unreachable ();
    }


  pat = get_insns ();
  end_sequence ();

  return pat;
}
