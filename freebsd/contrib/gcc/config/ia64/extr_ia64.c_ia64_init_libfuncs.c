
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DFmode ;
 int DImode ;
 int SFmode ;
 int SImode ;
 int TFmode ;
 int TImode ;
 int XFmode ;
 int add_optab ;
 int neg_optab ;
 int sdiv_optab ;
 int set_conv_libfunc (int ,int ,int ,char*) ;
 int set_optab_libfunc (int ,int ,char*) ;
 int sext_optab ;
 int sfix_optab ;
 int sfloat_optab ;
 int smod_optab ;
 int smul_optab ;
 int sub_optab ;
 int trunc_optab ;
 int udiv_optab ;
 int ufix_optab ;
 int ufloat_optab ;
 int umod_optab ;

__attribute__((used)) static void
ia64_init_libfuncs (void)
{
  set_optab_libfunc (sdiv_optab, SImode, "__divsi3");
  set_optab_libfunc (udiv_optab, SImode, "__udivsi3");
  set_optab_libfunc (smod_optab, SImode, "__modsi3");
  set_optab_libfunc (umod_optab, SImode, "__umodsi3");

  set_optab_libfunc (add_optab, TFmode, "_U_Qfadd");
  set_optab_libfunc (sub_optab, TFmode, "_U_Qfsub");
  set_optab_libfunc (smul_optab, TFmode, "_U_Qfmpy");
  set_optab_libfunc (sdiv_optab, TFmode, "_U_Qfdiv");
  set_optab_libfunc (neg_optab, TFmode, "_U_Qfneg");

  set_conv_libfunc (sext_optab, TFmode, SFmode, "_U_Qfcnvff_sgl_to_quad");
  set_conv_libfunc (sext_optab, TFmode, DFmode, "_U_Qfcnvff_dbl_to_quad");
  set_conv_libfunc (sext_optab, TFmode, XFmode, "_U_Qfcnvff_f80_to_quad");
  set_conv_libfunc (trunc_optab, SFmode, TFmode, "_U_Qfcnvff_quad_to_sgl");
  set_conv_libfunc (trunc_optab, DFmode, TFmode, "_U_Qfcnvff_quad_to_dbl");
  set_conv_libfunc (trunc_optab, XFmode, TFmode, "_U_Qfcnvff_quad_to_f80");

  set_conv_libfunc (sfix_optab, SImode, TFmode, "_U_Qfcnvfxt_quad_to_sgl");
  set_conv_libfunc (sfix_optab, DImode, TFmode, "_U_Qfcnvfxt_quad_to_dbl");
  set_conv_libfunc (sfix_optab, TImode, TFmode, "_U_Qfcnvfxt_quad_to_quad");
  set_conv_libfunc (ufix_optab, SImode, TFmode, "_U_Qfcnvfxut_quad_to_sgl");
  set_conv_libfunc (ufix_optab, DImode, TFmode, "_U_Qfcnvfxut_quad_to_dbl");

  set_conv_libfunc (sfloat_optab, TFmode, SImode, "_U_Qfcnvxf_sgl_to_quad");
  set_conv_libfunc (sfloat_optab, TFmode, DImode, "_U_Qfcnvxf_dbl_to_quad");
  set_conv_libfunc (sfloat_optab, TFmode, TImode, "_U_Qfcnvxf_quad_to_quad");


  set_conv_libfunc (ufloat_optab, TFmode, DImode, "_U_Qfcnvxuf_dbl_to_quad");
}
