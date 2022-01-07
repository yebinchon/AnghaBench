
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ABI_V4 ;
 scalar_t__ DEFAULT_ABI ;
 int DFmode ;
 int SFmode ;
 int SImode ;
 int TARGET_IEEEQUAD ;
 scalar_t__ TARGET_POWER2 ;
 int TARGET_POWERPC ;
 scalar_t__ TARGET_PPC_GPOPT ;
 scalar_t__ TARGET_SOFT_FLOAT ;
 scalar_t__ TARGET_XCOFF ;
 int TARGET_XL_COMPAT ;
 int TFmode ;
 int add_optab ;
 int eq_optab ;
 int ge_optab ;
 int gt_optab ;
 int le_optab ;
 int lt_optab ;
 int ne_optab ;
 int neg_optab ;
 int sdiv_optab ;
 int set_conv_libfunc (int ,int ,int ,char*) ;
 int set_optab_libfunc (int ,int ,char*) ;
 int sext_optab ;
 int sfix_optab ;
 int sfloat_optab ;
 int smul_optab ;
 int sqrt_optab ;
 int sub_optab ;
 int trunc_optab ;
 int ufix_optab ;
 int ufloat_optab ;
 int unord_optab ;

__attribute__((used)) static void
rs6000_init_libfuncs (void)
{
  if (DEFAULT_ABI != ABI_V4 && TARGET_XCOFF
      && !TARGET_POWER2 && !TARGET_POWERPC)
    {

      set_conv_libfunc (sfix_optab, SImode, DFmode, "__itrunc");
      set_conv_libfunc (ufix_optab, SImode, DFmode, "__uitrunc");
      set_conv_libfunc (sfix_optab, SImode, TFmode, "_qitrunc");
      set_conv_libfunc (ufix_optab, SImode, TFmode, "_quitrunc");
    }

  if (!TARGET_IEEEQUAD)

    if (!TARGET_XL_COMPAT)
      {
 set_optab_libfunc (add_optab, TFmode, "__gcc_qadd");
 set_optab_libfunc (sub_optab, TFmode, "__gcc_qsub");
 set_optab_libfunc (smul_optab, TFmode, "__gcc_qmul");
 set_optab_libfunc (sdiv_optab, TFmode, "__gcc_qdiv");

 if (TARGET_SOFT_FLOAT)
   {
     set_optab_libfunc (neg_optab, TFmode, "__gcc_qneg");
     set_optab_libfunc (eq_optab, TFmode, "__gcc_qeq");
     set_optab_libfunc (ne_optab, TFmode, "__gcc_qne");
     set_optab_libfunc (gt_optab, TFmode, "__gcc_qgt");
     set_optab_libfunc (ge_optab, TFmode, "__gcc_qge");
     set_optab_libfunc (lt_optab, TFmode, "__gcc_qlt");
     set_optab_libfunc (le_optab, TFmode, "__gcc_qle");
     set_optab_libfunc (unord_optab, TFmode, "__gcc_qunord");

     set_conv_libfunc (sext_optab, TFmode, SFmode, "__gcc_stoq");
     set_conv_libfunc (sext_optab, TFmode, DFmode, "__gcc_dtoq");
     set_conv_libfunc (trunc_optab, SFmode, TFmode, "__gcc_qtos");
     set_conv_libfunc (trunc_optab, DFmode, TFmode, "__gcc_qtod");
     set_conv_libfunc (sfix_optab, SImode, TFmode, "__gcc_qtoi");
     set_conv_libfunc (ufix_optab, SImode, TFmode, "__gcc_qtou");
     set_conv_libfunc (sfloat_optab, TFmode, SImode, "__gcc_itoq");
     set_conv_libfunc (ufloat_optab, TFmode, SImode, "__gcc_utoq");
   }
      }
    else
      {
 set_optab_libfunc (add_optab, TFmode, "_xlqadd");
 set_optab_libfunc (sub_optab, TFmode, "_xlqsub");
 set_optab_libfunc (smul_optab, TFmode, "_xlqmul");
 set_optab_libfunc (sdiv_optab, TFmode, "_xlqdiv");
      }
  else
    {


      set_optab_libfunc (add_optab, TFmode, "_q_add");
      set_optab_libfunc (sub_optab, TFmode, "_q_sub");
      set_optab_libfunc (neg_optab, TFmode, "_q_neg");
      set_optab_libfunc (smul_optab, TFmode, "_q_mul");
      set_optab_libfunc (sdiv_optab, TFmode, "_q_div");
      if (TARGET_PPC_GPOPT || TARGET_POWER2)
 set_optab_libfunc (sqrt_optab, TFmode, "_q_sqrt");

      set_optab_libfunc (eq_optab, TFmode, "_q_feq");
      set_optab_libfunc (ne_optab, TFmode, "_q_fne");
      set_optab_libfunc (gt_optab, TFmode, "_q_fgt");
      set_optab_libfunc (ge_optab, TFmode, "_q_fge");
      set_optab_libfunc (lt_optab, TFmode, "_q_flt");
      set_optab_libfunc (le_optab, TFmode, "_q_fle");

      set_conv_libfunc (sext_optab, TFmode, SFmode, "_q_stoq");
      set_conv_libfunc (sext_optab, TFmode, DFmode, "_q_dtoq");
      set_conv_libfunc (trunc_optab, SFmode, TFmode, "_q_qtos");
      set_conv_libfunc (trunc_optab, DFmode, TFmode, "_q_qtod");
      set_conv_libfunc (sfix_optab, SImode, TFmode, "_q_qtoi");
      set_conv_libfunc (ufix_optab, SImode, TFmode, "_q_qtou");
      set_conv_libfunc (sfloat_optab, TFmode, SImode, "_q_itoq");
      set_conv_libfunc (ufloat_optab, TFmode, SImode, "_q_utoq");
    }
}
