
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef scalar_t__ rtx ;
typedef enum rs6000_abi { ____Placeholder_rs6000_abi } rs6000_abi ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_7__ {int call_cookie; scalar_t__ nargs_prototype; scalar_t__ fregno; int words; int vregno; int sysv_gregno; scalar_t__ prototype; scalar_t__ stdarg; } ;
typedef TYPE_1__ CUMULATIVE_ARGS ;


 scalar_t__ ABI_AIX ;
 int ABI_V4 ;
 scalar_t__ ALTIVEC_VECTOR_MODE (int) ;
 int BLKmode ;
 int CALL_LIBCALL ;
 int CALL_V4_CLEAR_FP_ARGS ;
 int CALL_V4_SET_FP_ARGS ;
 int DCmode ;
 scalar_t__ DEFAULT_ABI ;
 int DFmode ;
 int DImode ;
 unsigned long FP_ARG_MAX_REG ;
 scalar_t__ FP_ARG_MIN_REG ;
 scalar_t__ FP_ARG_V4_MAX_REG ;
 scalar_t__ GEN_INT (int) ;
 int GET_MODE_SIZE (int) ;
 int GP_ARG_MAX_REG ;
 int GP_ARG_MIN_REG ;
 int GP_ARG_NUM_REG ;
 scalar_t__ NULL_RTX ;
 int Pmode ;
 scalar_t__ RECORD_TYPE ;
 int SFmode ;
 int SImode ;
 scalar_t__ SPE_VECTOR_MODE (int) ;
 scalar_t__ TARGET_32BIT ;
 scalar_t__ TARGET_64BIT ;
 scalar_t__ TARGET_ALTIVEC_ABI ;
 scalar_t__ TARGET_E500_DOUBLE ;
 scalar_t__ TARGET_FPRS ;
 scalar_t__ TARGET_HARD_FLOAT ;
 int TARGET_IEEEQUAD ;
 scalar_t__ TARGET_NO_PROTOTYPE ;
 scalar_t__ TARGET_POWERPC64 ;
 scalar_t__ TARGET_SPE ;
 scalar_t__ TARGET_SPE_ABI ;
 scalar_t__ TARGET_XL_COMPAT ;
 int TFmode ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ USE_ALTIVEC_FOR_ARG_P (TYPE_1__*,int,scalar_t__,int) ;
 scalar_t__ USE_FP_FOR_ARG_P (TYPE_1__*,int,scalar_t__) ;
 scalar_t__ VECTOR_TYPE ;
 int VOIDmode ;
 scalar_t__ const0_rtx ;
 int gcc_assert (int) ;
 int gen_rtvec (int,scalar_t__,scalar_t__) ;
 int gen_rtvec_v (int,scalar_t__*) ;
 scalar_t__ gen_rtx_EXPR_LIST (int,scalar_t__,scalar_t__) ;
 scalar_t__ gen_rtx_PARALLEL (int,int ) ;
 scalar_t__ gen_rtx_REG (int,int) ;
 int int_size_in_bytes (scalar_t__) ;
 void* rs6000_arg_size (int,scalar_t__) ;
 scalar_t__ rs6000_darwin64_abi ;
 scalar_t__ rs6000_darwin64_record_arg (TYPE_1__*,scalar_t__,int,int) ;
 scalar_t__ rs6000_mixed_function_arg (int,scalar_t__,int) ;
 int rs6000_parm_start (int,scalar_t__,int) ;
 scalar_t__ rs6000_spe_function_arg (TYPE_1__*,int,scalar_t__) ;

rtx
function_arg (CUMULATIVE_ARGS *cum, enum machine_mode mode,
       tree type, int named)
{
  enum rs6000_abi abi = DEFAULT_ABI;





  if (mode == VOIDmode)
    {
      if (abi == ABI_V4
   && (cum->call_cookie & CALL_LIBCALL) == 0
   && (cum->stdarg
       || (cum->nargs_prototype < 0
    && (cum->prototype || TARGET_NO_PROTOTYPE))))
 {

   if (TARGET_SPE_ABI)
     return GEN_INT (cum->call_cookie | CALL_V4_SET_FP_ARGS);
   else if (TARGET_HARD_FLOAT && TARGET_FPRS)
     return GEN_INT (cum->call_cookie
       | ((cum->fregno == FP_ARG_MIN_REG)
          ? CALL_V4_SET_FP_ARGS
          : CALL_V4_CLEAR_FP_ARGS));
 }

      return GEN_INT (cum->call_cookie);
    }

  if (rs6000_darwin64_abi && mode == BLKmode
      && TREE_CODE (type) == RECORD_TYPE)
    {
      rtx rslt = rs6000_darwin64_record_arg (cum, type, named, 0);
      if (rslt != NULL_RTX)
 return rslt;

    }

  if (USE_ALTIVEC_FOR_ARG_P (cum, mode, type, named))
    if (TARGET_64BIT && ! cum->prototype)
      {


 int align_words;
 rtx slot;
 align_words = (cum->words + 1) & ~1;

 if (align_words >= GP_ARG_NUM_REG)
   {
     slot = NULL_RTX;
   }
 else
   {
     slot = gen_rtx_REG (mode, GP_ARG_MIN_REG + align_words);
   }
 return gen_rtx_PARALLEL (mode,
   gen_rtvec (2,
       gen_rtx_EXPR_LIST (VOIDmode,
            slot, const0_rtx),
       gen_rtx_EXPR_LIST (VOIDmode,
            gen_rtx_REG (mode, cum->vregno),
            const0_rtx)));
      }
    else
      return gen_rtx_REG (mode, cum->vregno);
  else if (TARGET_ALTIVEC_ABI
    && (ALTIVEC_VECTOR_MODE (mode)
        || (type && TREE_CODE (type) == VECTOR_TYPE
     && int_size_in_bytes (type) == 16)))
    {
      if (named || abi == ABI_V4)
 return NULL_RTX;
      else
 {


   int align, align_words, n_words;
   enum machine_mode part_mode;






   if (TARGET_32BIT)
     align = (2 - cum->words) & 3;
   else
     align = cum->words & 1;
   align_words = cum->words + align;


   if (align_words >= GP_ARG_NUM_REG)
     return NULL_RTX;

   if (TARGET_32BIT && TARGET_POWERPC64)
     return rs6000_mixed_function_arg (mode, type, align_words);



   part_mode = mode;
   n_words = rs6000_arg_size (mode, type);
   if (align_words + n_words > GP_ARG_NUM_REG)


     part_mode = DImode;

   return gen_rtx_REG (part_mode, GP_ARG_MIN_REG + align_words);
 }
    }
  else if (TARGET_SPE_ABI && TARGET_SPE
    && (SPE_VECTOR_MODE (mode)
        || (TARGET_E500_DOUBLE && (mode == DFmode
       || mode == DCmode))))
    return rs6000_spe_function_arg (cum, mode, type);

  else if (abi == ABI_V4)
    {
      if (TARGET_HARD_FLOAT && TARGET_FPRS
   && (mode == SFmode || mode == DFmode
       || (mode == TFmode && !TARGET_IEEEQUAD)))
 {
   if (cum->fregno + (mode == TFmode ? 1 : 0) <= FP_ARG_V4_MAX_REG)
     return gen_rtx_REG (mode, cum->fregno);
   else
     return NULL_RTX;
 }
      else
 {
   int n_words = rs6000_arg_size (mode, type);
   int gregno = cum->sysv_gregno;




   if (n_words == 2)
     gregno += (1 - gregno) & 1;


   if (gregno + n_words - 1 > GP_ARG_MAX_REG)
     return NULL_RTX;

   if (TARGET_32BIT && TARGET_POWERPC64)
     return rs6000_mixed_function_arg (mode, type,
           gregno - GP_ARG_MIN_REG);
   return gen_rtx_REG (mode, gregno);
 }
    }
  else
    {
      int align_words = rs6000_parm_start (mode, type, cum->words);

      if (USE_FP_FOR_ARG_P (cum, mode, type))
 {
   rtx rvec[GP_ARG_NUM_REG + 1];
   rtx r;
   int k;
   bool needs_psave;
   enum machine_mode fmode = mode;
   unsigned long n_fpreg = (GET_MODE_SIZE (mode) + 7) >> 3;

   if (cum->fregno + n_fpreg > FP_ARG_MAX_REG + 1)
     {


       gcc_assert (cum->fregno == FP_ARG_MAX_REG && fmode == TFmode);


       fmode = DFmode;
     }



   needs_psave = (type
    && (cum->nargs_prototype <= 0
        || (DEFAULT_ABI == ABI_AIX
     && TARGET_XL_COMPAT
     && align_words >= GP_ARG_NUM_REG)));

   if (!needs_psave && mode == fmode)
     return gen_rtx_REG (fmode, cum->fregno);

   k = 0;
   if (needs_psave)
     {


       if (align_words < GP_ARG_NUM_REG)
  {
    unsigned long n_words = rs6000_arg_size (mode, type);

    if (align_words + n_words > GP_ARG_NUM_REG
        || (TARGET_32BIT && TARGET_POWERPC64))
      {


        enum machine_mode rmode = TARGET_32BIT ? SImode : DImode;
        rtx off;
        int i = 0;
        if (align_words + n_words > GP_ARG_NUM_REG)






   rvec[k++] = gen_rtx_EXPR_LIST (VOIDmode, NULL_RTX,
             const0_rtx);
        do
   {
     r = gen_rtx_REG (rmode,
        GP_ARG_MIN_REG + align_words);
     off = GEN_INT (i++ * GET_MODE_SIZE (rmode));
     rvec[k++] = gen_rtx_EXPR_LIST (VOIDmode, r, off);
   }
        while (++align_words < GP_ARG_NUM_REG && --n_words != 0);
      }
    else
      {

        r = gen_rtx_REG (mode, GP_ARG_MIN_REG + align_words);
        rvec[k++] = gen_rtx_EXPR_LIST (VOIDmode, r, const0_rtx);
      }
  }
       else

  rvec[k++] = gen_rtx_EXPR_LIST (VOIDmode, NULL_RTX, const0_rtx);
     }


   r = gen_rtx_REG (fmode, cum->fregno);
   rvec[k++] = gen_rtx_EXPR_LIST (VOIDmode, r, const0_rtx);

   return gen_rtx_PARALLEL (mode, gen_rtvec_v (k, rvec));
 }
      else if (align_words < GP_ARG_NUM_REG)
 {
   if (TARGET_32BIT && TARGET_POWERPC64)
     return rs6000_mixed_function_arg (mode, type, align_words);

   if (mode == BLKmode)
     mode = Pmode;

   return gen_rtx_REG (mode, GP_ARG_MIN_REG + align_words);
 }
      else
 return NULL_RTX;
    }
}
