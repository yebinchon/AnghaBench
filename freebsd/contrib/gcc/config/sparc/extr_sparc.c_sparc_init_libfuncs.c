
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DFmode ;
 scalar_t__ DITF_CONVERSION_LIBFUNCS ;
 int DImode ;
 int SFmode ;
 int SImode ;
 scalar_t__ SUN_CONVERSION_LIBFUNCS ;
 scalar_t__ SUN_INTEGER_MULTIPLY_64 ;
 scalar_t__ TARGET_ARCH32 ;
 scalar_t__ TARGET_ARCH64 ;
 scalar_t__ TARGET_FPU ;
 int TFmode ;
 int add_optab ;
 int eq_optab ;
 int ge_optab ;
 int gofast_maybe_init_libfuncs () ;
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
 int smod_optab ;
 int smul_optab ;
 int sqrt_optab ;
 int sub_optab ;
 int trunc_optab ;
 int udiv_optab ;
 int ufix_optab ;
 int ufloat_optab ;
 int umod_optab ;

__attribute__((used)) static void
sparc_init_libfuncs (void)
{
  if (TARGET_ARCH32)
    {




      set_optab_libfunc (smul_optab, SImode, "*.umul");
      set_optab_libfunc (sdiv_optab, SImode, "*.div");
      set_optab_libfunc (udiv_optab, SImode, "*.udiv");
      set_optab_libfunc (smod_optab, SImode, "*.rem");
      set_optab_libfunc (umod_optab, SImode, "*.urem");


      set_optab_libfunc (add_optab, TFmode, "_Q_add");
      set_optab_libfunc (sub_optab, TFmode, "_Q_sub");
      set_optab_libfunc (neg_optab, TFmode, "_Q_neg");
      set_optab_libfunc (smul_optab, TFmode, "_Q_mul");
      set_optab_libfunc (sdiv_optab, TFmode, "_Q_div");






      if (TARGET_FPU)
 set_optab_libfunc (sqrt_optab, TFmode, "_Q_sqrt");

      set_optab_libfunc (eq_optab, TFmode, "_Q_feq");
      set_optab_libfunc (ne_optab, TFmode, "_Q_fne");
      set_optab_libfunc (gt_optab, TFmode, "_Q_fgt");
      set_optab_libfunc (ge_optab, TFmode, "_Q_fge");
      set_optab_libfunc (lt_optab, TFmode, "_Q_flt");
      set_optab_libfunc (le_optab, TFmode, "_Q_fle");

      set_conv_libfunc (sext_optab, TFmode, SFmode, "_Q_stoq");
      set_conv_libfunc (sext_optab, TFmode, DFmode, "_Q_dtoq");
      set_conv_libfunc (trunc_optab, SFmode, TFmode, "_Q_qtos");
      set_conv_libfunc (trunc_optab, DFmode, TFmode, "_Q_qtod");

      set_conv_libfunc (sfix_optab, SImode, TFmode, "_Q_qtoi");
      set_conv_libfunc (ufix_optab, SImode, TFmode, "_Q_qtou");
      set_conv_libfunc (sfloat_optab, TFmode, SImode, "_Q_itoq");
      set_conv_libfunc (ufloat_optab, TFmode, SImode, "_Q_utoq");

      if (DITF_CONVERSION_LIBFUNCS)
 {
   set_conv_libfunc (sfix_optab, DImode, TFmode, "_Q_qtoll");
   set_conv_libfunc (ufix_optab, DImode, TFmode, "_Q_qtoull");
   set_conv_libfunc (sfloat_optab, TFmode, DImode, "_Q_lltoq");
   set_conv_libfunc (ufloat_optab, TFmode, DImode, "_Q_ulltoq");
 }

      if (SUN_CONVERSION_LIBFUNCS)
 {
   set_conv_libfunc (sfix_optab, DImode, SFmode, "__ftoll");
   set_conv_libfunc (ufix_optab, DImode, SFmode, "__ftoull");
   set_conv_libfunc (sfix_optab, DImode, DFmode, "__dtoll");
   set_conv_libfunc (ufix_optab, DImode, DFmode, "__dtoull");
 }
    }
  if (TARGET_ARCH64)
    {




      set_optab_libfunc (smul_optab, SImode, 0);
      set_optab_libfunc (sdiv_optab, SImode, 0);
      set_optab_libfunc (udiv_optab, SImode, 0);
      set_optab_libfunc (smod_optab, SImode, 0);
      set_optab_libfunc (umod_optab, SImode, 0);

      if (SUN_INTEGER_MULTIPLY_64)
 {
   set_optab_libfunc (smul_optab, DImode, "__mul64");
   set_optab_libfunc (sdiv_optab, DImode, "__div64");
   set_optab_libfunc (udiv_optab, DImode, "__udiv64");
   set_optab_libfunc (smod_optab, DImode, "__rem64");
   set_optab_libfunc (umod_optab, DImode, "__urem64");
 }

      if (SUN_CONVERSION_LIBFUNCS)
 {
   set_conv_libfunc (sfix_optab, DImode, SFmode, "__ftol");
   set_conv_libfunc (ufix_optab, DImode, SFmode, "__ftoul");
   set_conv_libfunc (sfix_optab, DImode, DFmode, "__dtol");
   set_conv_libfunc (ufix_optab, DImode, DFmode, "__dtoul");
 }
    }

  gofast_maybe_init_libfuncs ();
}
