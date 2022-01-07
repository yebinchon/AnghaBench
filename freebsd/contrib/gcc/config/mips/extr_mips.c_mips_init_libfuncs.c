
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DFmode ;
 int SFmode ;
 int SImode ;
 scalar_t__ TARGET_DOUBLE_FLOAT ;
 scalar_t__ TARGET_FIX_VR4120 ;
 scalar_t__ TARGET_MIPS16 ;
 int add_optab ;
 int eq_optab ;
 int ge_optab ;
 int gofast_maybe_init_libfuncs () ;
 int gt_optab ;
 int le_optab ;
 int lt_optab ;
 scalar_t__ mips16_hard_float ;
 int ne_optab ;
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

__attribute__((used)) static void
mips_init_libfuncs (void)
{
  if (TARGET_FIX_VR4120)
    {
      set_optab_libfunc (sdiv_optab, SImode, "__vr4120_divsi3");
      set_optab_libfunc (smod_optab, SImode, "__vr4120_modsi3");
    }

  if (TARGET_MIPS16 && mips16_hard_float)
    {
      set_optab_libfunc (add_optab, SFmode, "__mips16_addsf3");
      set_optab_libfunc (sub_optab, SFmode, "__mips16_subsf3");
      set_optab_libfunc (smul_optab, SFmode, "__mips16_mulsf3");
      set_optab_libfunc (sdiv_optab, SFmode, "__mips16_divsf3");

      set_optab_libfunc (eq_optab, SFmode, "__mips16_eqsf2");
      set_optab_libfunc (ne_optab, SFmode, "__mips16_nesf2");
      set_optab_libfunc (gt_optab, SFmode, "__mips16_gtsf2");
      set_optab_libfunc (ge_optab, SFmode, "__mips16_gesf2");
      set_optab_libfunc (lt_optab, SFmode, "__mips16_ltsf2");
      set_optab_libfunc (le_optab, SFmode, "__mips16_lesf2");

      set_conv_libfunc (sfix_optab, SImode, SFmode, "__mips16_fix_truncsfsi");
      set_conv_libfunc (sfloat_optab, SFmode, SImode, "__mips16_floatsisf");

      if (TARGET_DOUBLE_FLOAT)
 {
   set_optab_libfunc (add_optab, DFmode, "__mips16_adddf3");
   set_optab_libfunc (sub_optab, DFmode, "__mips16_subdf3");
   set_optab_libfunc (smul_optab, DFmode, "__mips16_muldf3");
   set_optab_libfunc (sdiv_optab, DFmode, "__mips16_divdf3");

   set_optab_libfunc (eq_optab, DFmode, "__mips16_eqdf2");
   set_optab_libfunc (ne_optab, DFmode, "__mips16_nedf2");
   set_optab_libfunc (gt_optab, DFmode, "__mips16_gtdf2");
   set_optab_libfunc (ge_optab, DFmode, "__mips16_gedf2");
   set_optab_libfunc (lt_optab, DFmode, "__mips16_ltdf2");
   set_optab_libfunc (le_optab, DFmode, "__mips16_ledf2");

   set_conv_libfunc (sext_optab, DFmode, SFmode, "__mips16_extendsfdf2");
   set_conv_libfunc (trunc_optab, SFmode, DFmode, "__mips16_truncdfsf2");

   set_conv_libfunc (sfix_optab, SImode, DFmode, "__mips16_fix_truncdfsi");
   set_conv_libfunc (sfloat_optab, DFmode, SImode, "__mips16_floatsidf");
 }
    }
  else
    gofast_maybe_init_libfuncs ();
}
