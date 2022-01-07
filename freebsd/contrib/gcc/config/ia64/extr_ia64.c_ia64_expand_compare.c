
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ BImode ;
 int DImode ;


 int GEN_INT (int) ;
 scalar_t__ GET_MODE (scalar_t__) ;

 int LCT_CONST ;




 scalar_t__ TFmode ;

 int VOIDmode ;
 scalar_t__ cmptf_libfunc ;
 scalar_t__ const0_rtx ;
 int emit_insn (int ) ;
 int emit_libcall_block (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ emit_library_call_value (scalar_t__,int ,int ,int ,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ) ;
 int end_sequence () ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 scalar_t__ gen_reg_rtx (scalar_t__) ;
 int gen_rtx_SET (int ,scalar_t__,scalar_t__) ;
 scalar_t__ gen_rtx_fmt_ee (int,int,scalar_t__,scalar_t__) ;
 scalar_t__ get_insns () ;
 scalar_t__ ia64_compare_op0 ;
 scalar_t__ ia64_compare_op1 ;
 int start_sequence () ;

rtx
ia64_expand_compare (enum rtx_code code, enum machine_mode mode)
{
  rtx op0 = ia64_compare_op0, op1 = ia64_compare_op1;
  rtx cmp;



  if (GET_MODE (op0) == BImode)
    {
      gcc_assert ((code == 130 || code == 135) && op1 == const0_rtx);
      cmp = op0;
    }



  else if (GET_MODE (op0) == TFmode)
    {
      enum qfcmp_magic {
 QCMP_INV = 1,
 QCMP_UNORD = 2,
 QCMP_EQ = 4,
 QCMP_LT = 8,
 QCMP_GT = 16
      } magic;
      enum rtx_code ncode;
      rtx ret, insns;

      gcc_assert (cmptf_libfunc && GET_MODE (op1) == TFmode);
      switch (code)
 {


 case 135: magic = QCMP_EQ; ncode = 130; break;
 case 130: magic = QCMP_EQ; ncode = 135; break;

 case 128: magic = QCMP_UNORD; ncode = 130; break;
 case 129: magic = QCMP_UNORD; ncode = 135; break;


 case 131: magic = QCMP_LT |QCMP_INV; ncode = 130; break;
 case 132: magic = QCMP_LT|QCMP_EQ|QCMP_INV; ncode = 130; break;
 case 133: magic = QCMP_GT |QCMP_INV; ncode = 130; break;
 case 134: magic = QCMP_GT|QCMP_EQ|QCMP_INV; ncode = 130; break;



 default: gcc_unreachable ();
 }

      start_sequence ();

      ret = emit_library_call_value (cmptf_libfunc, 0, LCT_CONST, DImode, 3,
         op0, TFmode, op1, TFmode,
         GEN_INT (magic), DImode);
      cmp = gen_reg_rtx (BImode);
      emit_insn (gen_rtx_SET (VOIDmode, cmp,
         gen_rtx_fmt_ee (ncode, BImode,
           ret, const0_rtx)));

      insns = get_insns ();
      end_sequence ();

      emit_libcall_block (insns, cmp, cmp,
     gen_rtx_fmt_ee (code, BImode, op0, op1));
      code = 130;
    }
  else
    {
      cmp = gen_reg_rtx (BImode);
      emit_insn (gen_rtx_SET (VOIDmode, cmp,
         gen_rtx_fmt_ee (code, BImode, op0, op1)));
      code = 130;
    }

  return gen_rtx_fmt_ee (code, mode, cmp, const0_rtx);
}
