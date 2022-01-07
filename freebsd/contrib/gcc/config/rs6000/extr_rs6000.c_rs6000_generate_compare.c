
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int CCEQmode ;
 int CCFPmode ;
 int CCUNSmode ;
 int CCmode ;



 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int SImode ;
 scalar_t__ SUBREG ;
 scalar_t__ SUBREG_PROMOTED_UNSIGNED_P (int ) ;
 scalar_t__ TARGET_64BIT ;
 scalar_t__ TARGET_E500 ;
 scalar_t__ TARGET_FPRS ;
 scalar_t__ TARGET_HARD_FLOAT ;
 int TARGET_IEEEQUAD ;
 scalar_t__ TARGET_LONG_DOUBLE_128 ;
 scalar_t__ TARGET_XL_COMPAT ;
 int TFmode ;





 int UNORDERED ;
 scalar_t__ UNSPEC ;
 scalar_t__ UNSPEC_SP_TEST ;
 int VOIDmode ;
 scalar_t__ XINT (int ,int) ;
 int XVECEXP (int ,int ,int ) ;
 int const0_rtx ;
 int const_true_rtx ;
 int emit_insn (int ) ;
 int flag_finite_math_only ;
 int flag_unsafe_math_optimizations ;
 int gcc_unreachable () ;
 int gen_cmpdfeq_gpr (int ,int ,int ) ;
 int gen_cmpdfgt_gpr (int ,int ,int ) ;
 int gen_cmpdflt_gpr (int ,int ,int ) ;
 int gen_cmpsfeq_gpr (int ,int ,int ) ;
 int gen_cmpsfgt_gpr (int ,int ,int ) ;
 int gen_cmpsflt_gpr (int ,int ,int ) ;
 int gen_e500_cr_ior_compare (int ,int ,int ) ;
 int gen_reg_rtx (int) ;
 int gen_rtvec (int,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int gen_rtx_CLOBBER (int,int ) ;
 int gen_rtx_COMPARE (int,int ,int ) ;
 int gen_rtx_IOR (int,int ,int ) ;
 int gen_rtx_PARALLEL (int,int ) ;
 int gen_rtx_SCRATCH (int const) ;
 int gen_rtx_SET (int,int ,int ) ;
 int gen_rtx_fmt_ee (int,int,int ,int ) ;
 int gen_stack_protect_testdi (int ,int ,int ) ;
 int gen_stack_protect_testsi (int ,int ,int ) ;
 int gen_tstdfeq_gpr (int ,int ,int ) ;
 int gen_tstdfgt_gpr (int ,int ,int ) ;
 int gen_tstdflt_gpr (int ,int ,int ) ;
 int gen_tstsfeq_gpr (int ,int ,int ) ;
 int gen_tstsfgt_gpr (int ,int ,int ) ;
 int gen_tstsflt_gpr (int ,int ,int ) ;
 scalar_t__ rs6000_compare_fp_p ;
 int rs6000_compare_op0 ;
 int rs6000_compare_op1 ;
 int validate_condition_mode (int,int) ;

__attribute__((used)) static rtx
rs6000_generate_compare (enum rtx_code code)
{
  enum machine_mode comp_mode;
  rtx compare_result;

  if (rs6000_compare_fp_p)
    comp_mode = CCFPmode;
  else if (code == 140 || code == 135
    || code == 142 || code == 138)
    comp_mode = CCUNSmode;
  else if ((code == 144 || code == 134)
    && GET_CODE (rs6000_compare_op0) == SUBREG
    && GET_CODE (rs6000_compare_op1) == SUBREG
    && SUBREG_PROMOTED_UNSIGNED_P (rs6000_compare_op0)
    && SUBREG_PROMOTED_UNSIGNED_P (rs6000_compare_op1))




    comp_mode = CCUNSmode;
  else
    comp_mode = CCmode;


  compare_result = gen_reg_rtx (comp_mode);


  if ((TARGET_E500 && !TARGET_FPRS && TARGET_HARD_FLOAT)
      && rs6000_compare_fp_p)
    {
      rtx cmp, or_result, compare_result2;
      enum machine_mode op_mode = GET_MODE (rs6000_compare_op0);

      if (op_mode == VOIDmode)
 op_mode = GET_MODE (rs6000_compare_op1);




      switch (code)
 {
 case 144: case 132: case 134: case 136:
   switch (op_mode)
     {
     case 133:
       cmp = flag_unsafe_math_optimizations
  ? gen_tstsfeq_gpr (compare_result, rs6000_compare_op0,
       rs6000_compare_op1)
  : gen_cmpsfeq_gpr (compare_result, rs6000_compare_op0,
       rs6000_compare_op1);
       break;

     case 145:
       cmp = flag_unsafe_math_optimizations
  ? gen_tstdfeq_gpr (compare_result, rs6000_compare_op0,
       rs6000_compare_op1)
  : gen_cmpdfeq_gpr (compare_result, rs6000_compare_op0,
       rs6000_compare_op1);
       break;

     default:
       gcc_unreachable ();
     }
   break;

 case 141: case 140: case 130: case 131: case 143: case 142:
   switch (op_mode)
     {
     case 133:
       cmp = flag_unsafe_math_optimizations
  ? gen_tstsfgt_gpr (compare_result, rs6000_compare_op0,
       rs6000_compare_op1)
  : gen_cmpsfgt_gpr (compare_result, rs6000_compare_op0,
       rs6000_compare_op1);
       break;

     case 145:
       cmp = flag_unsafe_math_optimizations
  ? gen_tstdfgt_gpr (compare_result, rs6000_compare_op0,
       rs6000_compare_op1)
  : gen_cmpdfgt_gpr (compare_result, rs6000_compare_op0,
       rs6000_compare_op1);
       break;

     default:
       gcc_unreachable ();
     }
   break;

 case 137: case 135: case 128: case 129: case 139: case 138:
   switch (op_mode)
     {
     case 133:
       cmp = flag_unsafe_math_optimizations
  ? gen_tstsflt_gpr (compare_result, rs6000_compare_op0,
       rs6000_compare_op1)
  : gen_cmpsflt_gpr (compare_result, rs6000_compare_op0,
       rs6000_compare_op1);
       break;

     case 145:
       cmp = flag_unsafe_math_optimizations
  ? gen_tstdflt_gpr (compare_result, rs6000_compare_op0,
       rs6000_compare_op1)
  : gen_cmpdflt_gpr (compare_result, rs6000_compare_op0,
       rs6000_compare_op1);
       break;

     default:
       gcc_unreachable ();
     }
   break;
        default:
          gcc_unreachable ();
 }


      if (code == 139 || code == 143 || code == 138 || code == 142)
 {
   emit_insn (cmp);

   switch (code)
     {
     case 139: code = 137; break;
     case 143: code = 141; break;
     case 138: code = 137; break;
     case 142: code = 141; break;
     default: gcc_unreachable ();
     }

   compare_result2 = gen_reg_rtx (CCFPmode);


   switch (op_mode)
     {
     case 133:
       cmp = flag_unsafe_math_optimizations
  ? gen_tstsfeq_gpr (compare_result2, rs6000_compare_op0,
       rs6000_compare_op1)
  : gen_cmpsfeq_gpr (compare_result2, rs6000_compare_op0,
       rs6000_compare_op1);
       break;

     case 145:
       cmp = flag_unsafe_math_optimizations
  ? gen_tstdfeq_gpr (compare_result2, rs6000_compare_op0,
       rs6000_compare_op1)
  : gen_cmpdfeq_gpr (compare_result2, rs6000_compare_op0,
       rs6000_compare_op1);
       break;

     default:
       gcc_unreachable ();
     }
   emit_insn (cmp);


   or_result = gen_reg_rtx (CCFPmode);
   cmp = gen_e500_cr_ior_compare (or_result, compare_result,
        compare_result2);
   compare_result = or_result;
   code = 144;
 }
      else
 {
   if (code == 134 || code == 136)
     code = 134;
   else
     code = 144;
 }

      emit_insn (cmp);
    }
  else
    {


      if (comp_mode == CCFPmode && TARGET_XL_COMPAT
   && GET_MODE (rs6000_compare_op0) == TFmode
   && !TARGET_IEEEQUAD
   && TARGET_HARD_FLOAT && TARGET_FPRS && TARGET_LONG_DOUBLE_128)
 emit_insn (gen_rtx_PARALLEL (VOIDmode,
   gen_rtvec (9,
       gen_rtx_SET (VOIDmode,
      compare_result,
      gen_rtx_COMPARE (comp_mode,
         rs6000_compare_op0,
         rs6000_compare_op1)),
       gen_rtx_CLOBBER (VOIDmode, gen_rtx_SCRATCH (145)),
       gen_rtx_CLOBBER (VOIDmode, gen_rtx_SCRATCH (145)),
       gen_rtx_CLOBBER (VOIDmode, gen_rtx_SCRATCH (145)),
       gen_rtx_CLOBBER (VOIDmode, gen_rtx_SCRATCH (145)),
       gen_rtx_CLOBBER (VOIDmode, gen_rtx_SCRATCH (145)),
       gen_rtx_CLOBBER (VOIDmode, gen_rtx_SCRATCH (145)),
       gen_rtx_CLOBBER (VOIDmode, gen_rtx_SCRATCH (145)),
       gen_rtx_CLOBBER (VOIDmode, gen_rtx_SCRATCH (145)))));
      else if (GET_CODE (rs6000_compare_op1) == UNSPEC
        && XINT (rs6000_compare_op1, 1) == UNSPEC_SP_TEST)
 {
   rtx op1 = XVECEXP (rs6000_compare_op1, 0, 0);
   comp_mode = CCEQmode;
   compare_result = gen_reg_rtx (CCEQmode);
   if (TARGET_64BIT)
     emit_insn (gen_stack_protect_testdi (compare_result,
       rs6000_compare_op0, op1));
   else
     emit_insn (gen_stack_protect_testsi (compare_result,
       rs6000_compare_op0, op1));
 }
      else
 emit_insn (gen_rtx_SET (VOIDmode, compare_result,
    gen_rtx_COMPARE (comp_mode,
       rs6000_compare_op0,
       rs6000_compare_op1)));
    }



  if (rs6000_compare_fp_p
      && !flag_finite_math_only
      && !(TARGET_HARD_FLOAT && TARGET_E500 && !TARGET_FPRS)
      && (code == 139 || code == 143
   || code == 132 || code == 136
   || code == 130 || code == 128))
    {
      enum rtx_code or1, or2;
      rtx or1_rtx, or2_rtx, compare2_rtx;
      rtx or_result = gen_reg_rtx (CCEQmode);

      switch (code)
 {
 case 139: or1 = 137; or2 = 144; break;
 case 143: or1 = 141; or2 = 144; break;
 case 132: or1 = UNORDERED; or2 = 144; break;
 case 136: or1 = 137; or2 = 141; break;
 case 130: or1 = UNORDERED; or2 = 141; break;
 case 128: or1 = UNORDERED; or2 = 137; break;
 default: gcc_unreachable ();
 }
      validate_condition_mode (or1, comp_mode);
      validate_condition_mode (or2, comp_mode);
      or1_rtx = gen_rtx_fmt_ee (or1, SImode, compare_result, const0_rtx);
      or2_rtx = gen_rtx_fmt_ee (or2, SImode, compare_result, const0_rtx);
      compare2_rtx = gen_rtx_COMPARE (CCEQmode,
          gen_rtx_IOR (SImode, or1_rtx, or2_rtx),
          const_true_rtx);
      emit_insn (gen_rtx_SET (VOIDmode, or_result, compare2_rtx));

      compare_result = or_result;
      code = 144;
    }

  validate_condition_mode (code, GET_MODE (compare_result));

  return gen_rtx_fmt_ee (code, VOIDmode, compare_result, const0_rtx);
}
