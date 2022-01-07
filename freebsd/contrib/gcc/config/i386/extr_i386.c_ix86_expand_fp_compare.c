
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int CCNOmode ;
 int CCmode ;

 int FLAGS_REG ;

 int GEN_INT (int) ;
 int GEU ;

 int HImode ;



 int LTU ;

 scalar_t__ NULL_RTX ;

 scalar_t__ TARGET_CMOVE ;
 int TARGET_IEEE_FP ;



 int UNKNOWN ;



 int UNSPEC_FNSTSW ;
 int VOIDmode ;
 int const0_rtx ;
 int constm1_rtx ;
 int emit_insn (scalar_t__) ;
 int gcc_unreachable () ;
 scalar_t__ gen_addqi_ext_1 (scalar_t__,scalar_t__,int ) ;
 scalar_t__ gen_andqi_ext_0 (scalar_t__,scalar_t__,int ) ;
 scalar_t__ gen_cmpqi_ext_3 (scalar_t__,int ) ;
 scalar_t__ gen_reg_rtx (int ) ;
 int gen_rtvec (int,scalar_t__) ;
 scalar_t__ gen_rtx_COMPARE (int,scalar_t__,scalar_t__) ;
 scalar_t__ gen_rtx_REG (int,int ) ;
 scalar_t__ gen_rtx_SET (int ,scalar_t__,scalar_t__) ;
 scalar_t__ gen_rtx_UNSPEC (int ,int ,int ) ;
 scalar_t__ gen_rtx_fmt_ee (int,int ,scalar_t__,int ) ;
 scalar_t__ gen_testqi_ext_ccno_0 (scalar_t__,int ) ;
 scalar_t__ gen_x86_sahf_1 (scalar_t__) ;
 scalar_t__ gen_xorqi_cc_ext_1 (scalar_t__,scalar_t__,int ) ;
 int ix86_fp_compare_mode (int) ;
 int ix86_fp_comparison_arithmetics_cost (int) ;
 int ix86_fp_comparison_codes (int,int*,int*,int*) ;
 int ix86_fp_comparison_cost (int) ;
 int ix86_prepare_fp_compare_args (int,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static rtx
ix86_expand_fp_compare (enum rtx_code code, rtx op0, rtx op1, rtx scratch,
   rtx *second_test, rtx *bypass_test)
{
  enum machine_mode fpcmp_mode, intcmp_mode;
  rtx tmp, tmp2;
  int cost = ix86_fp_comparison_cost (code);
  enum rtx_code bypass_code, first_code, second_code;

  fpcmp_mode = ix86_fp_compare_mode (code);
  code = ix86_prepare_fp_compare_args (code, &op0, &op1);

  if (second_test)
    *second_test = NULL_RTX;
  if (bypass_test)
    *bypass_test = NULL_RTX;

  ix86_fp_comparison_codes (code, &bypass_code, &first_code, &second_code);


  if ((bypass_code == UNKNOWN || bypass_test)
      && (second_code == UNKNOWN || second_test)
      && ix86_fp_comparison_arithmetics_cost (code) > cost)
    {
      if (TARGET_CMOVE)
 {
   tmp = gen_rtx_COMPARE (fpcmp_mode, op0, op1);
   tmp = gen_rtx_SET (VOIDmode, gen_rtx_REG (fpcmp_mode, FLAGS_REG),
        tmp);
   emit_insn (tmp);
 }
      else
 {
   tmp = gen_rtx_COMPARE (fpcmp_mode, op0, op1);
   tmp2 = gen_rtx_UNSPEC (HImode, gen_rtvec (1, tmp), UNSPEC_FNSTSW);
   if (!scratch)
     scratch = gen_reg_rtx (HImode);
   emit_insn (gen_rtx_SET (VOIDmode, scratch, tmp2));
   emit_insn (gen_x86_sahf_1 (scratch));
 }


      intcmp_mode = fpcmp_mode;
      code = first_code;
      if (bypass_code != UNKNOWN)
 *bypass_test = gen_rtx_fmt_ee (bypass_code, VOIDmode,
           gen_rtx_REG (intcmp_mode, FLAGS_REG),
           const0_rtx);
      if (second_code != UNKNOWN)
 *second_test = gen_rtx_fmt_ee (second_code, VOIDmode,
           gen_rtx_REG (intcmp_mode, FLAGS_REG),
           const0_rtx);
    }
  else
    {

      tmp = gen_rtx_COMPARE (fpcmp_mode, op0, op1);
      tmp2 = gen_rtx_UNSPEC (HImode, gen_rtvec (1, tmp), UNSPEC_FNSTSW);
      if (!scratch)
 scratch = gen_reg_rtx (HImode);
      emit_insn (gen_rtx_SET (VOIDmode, scratch, tmp2));






      intcmp_mode = CCNOmode;
      switch (code)
 {
 case 139:
 case 131:
   if (code == 139 || !TARGET_IEEE_FP)
     {
       emit_insn (gen_testqi_ext_ccno_0 (scratch, GEN_INT (0x45)));
       code = 141;
     }
   else
     {
       emit_insn (gen_andqi_ext_0 (scratch, scratch, GEN_INT (0x45)));
       emit_insn (gen_addqi_ext_1 (scratch, scratch, constm1_rtx));
       emit_insn (gen_cmpqi_ext_3 (scratch, GEN_INT (0x44)));
       intcmp_mode = CCmode;
       code = GEU;
     }
   break;
 case 137:
 case 129:
   if (code == 137 && TARGET_IEEE_FP)
     {
       emit_insn (gen_andqi_ext_0 (scratch, scratch, GEN_INT (0x45)));
       emit_insn (gen_cmpqi_ext_3 (scratch, GEN_INT (0x01)));
       intcmp_mode = CCmode;
       code = 141;
     }
   else
     {
       emit_insn (gen_testqi_ext_ccno_0 (scratch, GEN_INT (0x01)));
       code = 135;
     }
   break;
 case 140:
 case 132:
   if (code == 140 || !TARGET_IEEE_FP)
     {
       emit_insn (gen_testqi_ext_ccno_0 (scratch, GEN_INT (0x05)));
       code = 141;
     }
   else
     {
       emit_insn (gen_andqi_ext_0 (scratch, scratch, GEN_INT (0x45)));
       emit_insn (gen_xorqi_cc_ext_1 (scratch, scratch,
          GEN_INT (0x01)));
       code = 135;
     }
   break;
 case 138:
 case 130:
   if (code == 138 && TARGET_IEEE_FP)
     {
       emit_insn (gen_andqi_ext_0 (scratch, scratch, GEN_INT (0x45)));
       emit_insn (gen_addqi_ext_1 (scratch, scratch, constm1_rtx));
       emit_insn (gen_cmpqi_ext_3 (scratch, GEN_INT (0x40)));
       intcmp_mode = CCmode;
       code = LTU;
     }
   else
     {
       emit_insn (gen_testqi_ext_ccno_0 (scratch, GEN_INT (0x45)));
       code = 135;
     }
   break;
 case 141:
 case 133:
   if (code == 141 && TARGET_IEEE_FP)
     {
       emit_insn (gen_andqi_ext_0 (scratch, scratch, GEN_INT (0x45)));
       emit_insn (gen_cmpqi_ext_3 (scratch, GEN_INT (0x40)));
       intcmp_mode = CCmode;
       code = 141;
     }
   else
     {
       emit_insn (gen_testqi_ext_ccno_0 (scratch, GEN_INT (0x40)));
       code = 135;
       break;
     }
   break;
 case 135:
 case 136:
   if (code == 135 && TARGET_IEEE_FP)
     {
       emit_insn (gen_andqi_ext_0 (scratch, scratch, GEN_INT (0x45)));
       emit_insn (gen_xorqi_cc_ext_1 (scratch, scratch,
          GEN_INT (0x40)));
       code = 135;
     }
   else
     {
       emit_insn (gen_testqi_ext_ccno_0 (scratch, GEN_INT (0x40)));
       code = 141;
     }
   break;

 case 128:
   emit_insn (gen_testqi_ext_ccno_0 (scratch, GEN_INT (0x04)));
   code = 135;
   break;
 case 134:
   emit_insn (gen_testqi_ext_ccno_0 (scratch, GEN_INT (0x04)));
   code = 141;
   break;

 default:
   gcc_unreachable ();
 }
    }



  return gen_rtx_fmt_ee (code, VOIDmode,
    gen_rtx_REG (intcmp_mode, FLAGS_REG),
    const0_rtx);
}
