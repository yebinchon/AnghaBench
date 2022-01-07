
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 int CCmode ;
 int EQ ;
 int FPSW_REGNUM ;
 int GET_MODE (scalar_t__) ;
 scalar_t__ GET_MODE_CLASS (int ) ;
 scalar_t__ ISA_HAS_8CC ;
 scalar_t__ MODE_INT ;
 int NE ;
 scalar_t__* cmp_operands ;
 scalar_t__ const0_rtx ;
 scalar_t__ force_reg (int ,scalar_t__) ;
 scalar_t__ gen_reg_rtx (int ) ;
 scalar_t__ gen_rtx_REG (int ,int ) ;
 int mips_emit_binary (int,scalar_t__,scalar_t__,scalar_t__) ;
 int mips_emit_int_relational (int,int*,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ mips_reverse_fp_cond_p (int*) ;
 scalar_t__ mips_zero_if_equal (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
mips_emit_compare (enum rtx_code *code, rtx *op0, rtx *op1, bool need_eq_ne_p)
{
  if (GET_MODE_CLASS (GET_MODE (cmp_operands[0])) == MODE_INT)
    {
      if (!need_eq_ne_p && cmp_operands[1] == const0_rtx)
 {
   *op0 = cmp_operands[0];
   *op1 = cmp_operands[1];
 }
      else if (*code == EQ || *code == NE)
 {
   if (need_eq_ne_p)
     {
       *op0 = mips_zero_if_equal (cmp_operands[0], cmp_operands[1]);
       *op1 = const0_rtx;
     }
   else
     {
       *op0 = cmp_operands[0];
       *op1 = force_reg (GET_MODE (*op0), cmp_operands[1]);
     }
 }
      else
 {


   bool invert = 0;
   *op0 = gen_reg_rtx (GET_MODE (cmp_operands[0]));
   *op1 = const0_rtx;
   mips_emit_int_relational (*code, &invert, *op0,
        cmp_operands[0], cmp_operands[1]);
   *code = (invert ? EQ : NE);
 }
    }
  else
    {
      enum rtx_code cmp_code;







      cmp_code = *code;
      *code = mips_reverse_fp_cond_p (&cmp_code) ? EQ : NE;
      *op0 = (ISA_HAS_8CC
       ? gen_reg_rtx (CCmode)
       : gen_rtx_REG (CCmode, FPSW_REGNUM));
      *op1 = const0_rtx;
      mips_emit_binary (cmp_code, *op0, cmp_operands[0], cmp_operands[1]);
    }
}
