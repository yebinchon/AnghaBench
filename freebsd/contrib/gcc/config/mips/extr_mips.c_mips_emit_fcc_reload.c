
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int CONST0_RTX (int ) ;
 scalar_t__ FP_INC ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ MEM_P (int ) ;
 scalar_t__ REGNO (int ) ;
 scalar_t__ REG_P (int ) ;
 int SFmode ;
 scalar_t__ SUBREG ;
 int adjust_address (int ,int ,int ) ;
 int copy_rtx (int ) ;
 int emit_insn (int ) ;
 int emit_move_insn (int ,int ) ;
 int gen_rtx_REG (int ,scalar_t__) ;
 int gen_slt_sf (int ,int ,int ) ;
 scalar_t__ true_regnum (int ) ;

void
mips_emit_fcc_reload (rtx dest, rtx src, rtx scratch)
{
  rtx fp1, fp2;


  if (MEM_P (src))
    src = adjust_address (src, SFmode, 0);
  else if (REG_P (src) || GET_CODE (src) == SUBREG)
    src = gen_rtx_REG (SFmode, true_regnum (src));

  fp1 = gen_rtx_REG (SFmode, REGNO (scratch));
  fp2 = gen_rtx_REG (SFmode, REGNO (scratch) + FP_INC);

  emit_move_insn (copy_rtx (fp1), src);
  emit_move_insn (copy_rtx (fp2), CONST0_RTX (SFmode));
  emit_insn (gen_slt_sf (dest, fp2, fp1));
}
