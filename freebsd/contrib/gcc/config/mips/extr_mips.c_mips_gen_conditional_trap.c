
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int GE ;
 int GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int GEU ;




 int LT ;
 int LTU ;
 int VOIDmode ;
 int arith_operand (int ,int) ;
 int * cmp_operands ;
 int emit_insn (int ) ;
 int force_reg (int,int ) ;
 int gen_rtx_TRAP_IF (int ,int ,int ) ;
 int gen_rtx_fmt_ee (int,int,int ,int ) ;

void
mips_gen_conditional_trap (rtx *operands)
{
  rtx op0, op1;
  enum rtx_code cmp_code = GET_CODE (operands[0]);
  enum machine_mode mode = GET_MODE (cmp_operands[0]);




  switch (cmp_code)
    {
    case 131: cmp_code = LT; break;
    case 129: cmp_code = GE; break;
    case 130: cmp_code = LTU; break;
    case 128: cmp_code = GEU; break;
    default: break;
    }
  if (cmp_code == GET_CODE (operands[0]))
    {
      op0 = cmp_operands[0];
      op1 = cmp_operands[1];
    }
  else
    {
      op0 = cmp_operands[1];
      op1 = cmp_operands[0];
    }
  op0 = force_reg (mode, op0);
  if (!arith_operand (op1, mode))
    op1 = force_reg (mode, op1);

  emit_insn (gen_rtx_TRAP_IF (VOIDmode,
         gen_rtx_fmt_ee (cmp_code, mode, op0, op1),
         operands[1]));
}
