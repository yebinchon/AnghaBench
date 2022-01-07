
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TFmode ;
 int eq_optab ;
 int ge_optab ;
 int gt_optab ;
 int ia64_init_libfuncs () ;
 int le_optab ;
 int lt_optab ;
 int ne_optab ;
 int set_optab_libfunc (int ,int ,char*) ;

__attribute__((used)) static void
ia64_sysv4_init_libfuncs (void)
{
  ia64_init_libfuncs ();




  set_optab_libfunc (eq_optab, TFmode, "_U_Qfeq");
  set_optab_libfunc (ne_optab, TFmode, "_U_Qfne");
  set_optab_libfunc (gt_optab, TFmode, "_U_Qfgt");
  set_optab_libfunc (ge_optab, TFmode, "_U_Qfge");
  set_optab_libfunc (lt_optab, TFmode, "_U_Qflt");
  set_optab_libfunc (le_optab, TFmode, "_U_Qfle");



}
