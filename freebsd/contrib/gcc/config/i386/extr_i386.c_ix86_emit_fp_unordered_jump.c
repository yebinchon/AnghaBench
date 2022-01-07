
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int CCNOmode ;
 int CCmode ;
 int FLAGS_REG ;
 int GEN_INT (int) ;
 int HImode ;
 scalar_t__ TARGET_USE_SAHF ;
 int VOIDmode ;
 int const0_rtx ;
 int emit_insn (int ) ;
 int emit_jump_insn (int ) ;
 int gen_reg_rtx (int ) ;
 int gen_rtx_IF_THEN_ELSE (int ,int ,int ,int ) ;
 int gen_rtx_LABEL_REF (int ,int ) ;
 int gen_rtx_NE (int ,int ,int ) ;
 int gen_rtx_REG (int ,int ) ;
 int gen_rtx_SET (int ,int ,int ) ;
 int gen_rtx_UNORDERED (int ,int ,int ) ;
 int gen_testqi_ext_ccno_0 (int ,int ) ;
 int gen_x86_fnstsw_1 (int ) ;
 int gen_x86_sahf_1 (int ) ;
 int pc_rtx ;

void
ix86_emit_fp_unordered_jump (rtx label)
{
  rtx reg = gen_reg_rtx (HImode);
  rtx temp;

  emit_insn (gen_x86_fnstsw_1 (reg));

  if (TARGET_USE_SAHF)
    {
      emit_insn (gen_x86_sahf_1 (reg));

      temp = gen_rtx_REG (CCmode, FLAGS_REG);
      temp = gen_rtx_UNORDERED (VOIDmode, temp, const0_rtx);
    }
  else
    {
      emit_insn (gen_testqi_ext_ccno_0 (reg, GEN_INT (0x04)));

      temp = gen_rtx_REG (CCNOmode, FLAGS_REG);
      temp = gen_rtx_NE (VOIDmode, temp, const0_rtx);
    }

  temp = gen_rtx_IF_THEN_ELSE (VOIDmode, temp,
         gen_rtx_LABEL_REF (VOIDmode, label),
         pc_rtx);
  temp = gen_rtx_SET (VOIDmode, pc_rtx, temp);
  emit_jump_insn (temp);
}
