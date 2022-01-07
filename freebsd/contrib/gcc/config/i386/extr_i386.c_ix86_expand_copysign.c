
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int rtvec ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int ABS ;
 int CONST0_RTX (int) ;
 scalar_t__ CONST_DOUBLE ;
 int CONST_DOUBLE_REAL_VALUE (int ) ;
 int DFmode ;
 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int SFmode ;
 int V2DFmode ;
 int V4SFmode ;
 int emit_insn (int ) ;
 int force_reg (int,int ) ;
 int gen_copysigndf3_const (int ,int ,int ,int ) ;
 int gen_copysigndf3_var (int ,int *,int ,int ,int ,int ) ;
 int gen_copysignsf3_const (int ,int ,int ,int ) ;
 int gen_copysignsf3_var (int ,int *,int ,int ,int ,int ) ;
 int gen_rtvec (int,int ,int ,...) ;
 int gen_rtx_CONST_VECTOR (int,int ) ;
 int ix86_build_signbit_mask (int,int ,int) ;
 scalar_t__ real_isneg (int ) ;
 int simplify_unary_operation (int ,int,int ,int) ;

void
ix86_expand_copysign (rtx operands[])
{
  enum machine_mode mode, vmode;
  rtx dest, op0, op1, mask, nmask;

  dest = operands[0];
  op0 = operands[1];
  op1 = operands[2];

  mode = GET_MODE (dest);
  vmode = mode == SFmode ? V4SFmode : V2DFmode;

  if (GET_CODE (op0) == CONST_DOUBLE)
    {
      rtvec v;

      if (real_isneg (CONST_DOUBLE_REAL_VALUE (op0)))
 op0 = simplify_unary_operation (ABS, mode, op0, mode);

      if (op0 == CONST0_RTX (mode))
 op0 = CONST0_RTX (vmode);
      else
        {
   if (mode == SFmode)
     v = gen_rtvec (4, op0, CONST0_RTX (SFmode),
                           CONST0_RTX (SFmode), CONST0_RTX (SFmode));
   else
     v = gen_rtvec (2, op0, CONST0_RTX (DFmode));
          op0 = force_reg (vmode, gen_rtx_CONST_VECTOR (vmode, v));
 }

      mask = ix86_build_signbit_mask (mode, 0, 0);

      if (mode == SFmode)
 emit_insn (gen_copysignsf3_const (dest, op0, op1, mask));
      else
 emit_insn (gen_copysigndf3_const (dest, op0, op1, mask));
    }
  else
    {
      nmask = ix86_build_signbit_mask (mode, 0, 1);
      mask = ix86_build_signbit_mask (mode, 0, 0);

      if (mode == SFmode)
 emit_insn (gen_copysignsf3_var (dest, ((void*)0), op0, op1, nmask, mask));
      else
 emit_insn (gen_copysigndf3_var (dest, ((void*)0), op0, op1, nmask, mask));
    }
}
