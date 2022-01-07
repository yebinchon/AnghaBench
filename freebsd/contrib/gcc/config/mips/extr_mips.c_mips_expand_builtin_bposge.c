
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum mips_builtin_type { ____Placeholder_mips_builtin_type } mips_builtin_type ;


 int CCDSP_PO_REGNUM ;
 int CCDSPmode ;
 int GEN_INT (int) ;
 scalar_t__ GET_MODE (int ) ;
 int MIPS_BUILTIN_BPOSGE32 ;
 scalar_t__ SImode ;
 int VOIDmode ;
 int const0_rtx ;
 int const1_rtx ;
 int gcc_assert (int ) ;
 int gen_reg_rtx (scalar_t__) ;
 int gen_rtx_GE (int ,int ,int ) ;
 int gen_rtx_REG (int ,int ) ;
 int mips_builtin_branch_and_move (int ,int ,int ,int ) ;

__attribute__((used)) static rtx
mips_expand_builtin_bposge (enum mips_builtin_type builtin_type, rtx target)
{
  rtx condition, cmp_result;
  int cmp_value;

  if (target == 0 || GET_MODE (target) != SImode)
    target = gen_reg_rtx (SImode);

  cmp_result = gen_rtx_REG (CCDSPmode, CCDSP_PO_REGNUM);

  if (builtin_type == MIPS_BUILTIN_BPOSGE32)
    cmp_value = 32;
  else
    gcc_assert (0);

  condition = gen_rtx_GE (VOIDmode, cmp_result, GEN_INT (cmp_value));
  return mips_builtin_branch_and_move (condition, target,
           const1_rtx, const0_rtx);
}
