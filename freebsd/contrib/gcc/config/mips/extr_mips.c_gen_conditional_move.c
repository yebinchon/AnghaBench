
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 int GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int VOIDmode ;
 int emit_insn (int ) ;
 int gen_rtx_IF_THEN_ELSE (int ,int ,int ,int ) ;
 int gen_rtx_SET (int ,int ,int ) ;
 int gen_rtx_fmt_ee (int,int ,int ,int ) ;
 int mips_emit_compare (int*,int *,int *,int) ;

void
gen_conditional_move (rtx *operands)
{
  enum rtx_code code;
  rtx op0, op1;

  code = GET_CODE (operands[1]);
  mips_emit_compare (&code, &op0, &op1, 1);
  emit_insn (gen_rtx_SET (VOIDmode, operands[0],
     gen_rtx_IF_THEN_ELSE (GET_MODE (operands[0]),
      gen_rtx_fmt_ee (code,
        GET_MODE (op0),
        op0, op1),
      operands[2], operands[3])));
}
