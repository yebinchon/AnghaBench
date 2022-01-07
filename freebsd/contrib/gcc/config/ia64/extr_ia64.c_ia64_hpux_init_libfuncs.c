
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DImode ;
 int SImode ;
 int TFmode ;
 int abs_optab ;
 int cmptf_libfunc ;
 int eq_optab ;
 int ge_optab ;
 int gt_optab ;
 int ia64_init_libfuncs () ;
 int init_one_libfunc (char*) ;
 int le_optab ;
 int lt_optab ;
 int ne_optab ;
 int sdiv_optab ;
 int set_optab_libfunc (int ,int ,char*) ;
 int smax_optab ;
 int smin_optab ;
 int smod_optab ;
 int udiv_optab ;
 int umod_optab ;

__attribute__((used)) static void
ia64_hpux_init_libfuncs (void)
{
  ia64_init_libfuncs ();






  set_optab_libfunc (sdiv_optab, SImode, 0);
  set_optab_libfunc (udiv_optab, SImode, 0);
  set_optab_libfunc (smod_optab, SImode, 0);
  set_optab_libfunc (umod_optab, SImode, 0);

  set_optab_libfunc (sdiv_optab, DImode, "__milli_divI");
  set_optab_libfunc (udiv_optab, DImode, "__milli_divU");
  set_optab_libfunc (smod_optab, DImode, "__milli_remI");
  set_optab_libfunc (umod_optab, DImode, "__milli_remU");


  set_optab_libfunc (smin_optab, TFmode, "_U_Qfmin");
  set_optab_libfunc (smax_optab, TFmode, "_U_Qfmax");
  set_optab_libfunc (abs_optab, TFmode, "_U_Qfabs");


  cmptf_libfunc = init_one_libfunc ("_U_Qfcmp");


  set_optab_libfunc (eq_optab, TFmode, 0);
  set_optab_libfunc (ne_optab, TFmode, 0);
  set_optab_libfunc (gt_optab, TFmode, 0);
  set_optab_libfunc (ge_optab, TFmode, 0);
  set_optab_libfunc (lt_optab, TFmode, 0);
  set_optab_libfunc (le_optab, TFmode, 0);
}
