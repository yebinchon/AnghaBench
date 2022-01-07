
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 int TARGET_MIPS16 ;
 int VOIDmode ;
 int emit_jump_insn (int ) ;
 int gen_condjump (int ,int ) ;
 int gen_rtx_fmt_ee (int,int ,int ,int ) ;
 int mips_emit_compare (int*,int *,int *,int ) ;

void
gen_conditional_branch (rtx *operands, enum rtx_code code)
{
  rtx op0, op1, condition;

  mips_emit_compare (&code, &op0, &op1, TARGET_MIPS16);
  condition = gen_rtx_fmt_ee (code, VOIDmode, op0, op1);
  emit_jump_insn (gen_condjump (condition, operands[0]));
}
