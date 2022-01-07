
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DImode ;
 int SImode ;
 int sdiv_optab ;
 int set_optab_libfunc (int ,int ,char*) ;
 int smod_optab ;
 int udiv_optab ;
 int umod_optab ;

__attribute__((used)) static void
ia64_vms_init_libfuncs (void)
{
  set_optab_libfunc (sdiv_optab, SImode, "OTS$DIV_I");
  set_optab_libfunc (sdiv_optab, DImode, "OTS$DIV_L");
  set_optab_libfunc (udiv_optab, SImode, "OTS$DIV_UI");
  set_optab_libfunc (udiv_optab, DImode, "OTS$DIV_UL");
  set_optab_libfunc (smod_optab, SImode, "OTS$REM_I");
  set_optab_libfunc (smod_optab, DImode, "OTS$REM_L");
  set_optab_libfunc (umod_optab, SImode, "OTS$REM_UI");
  set_optab_libfunc (umod_optab, DImode, "OTS$REM_UL");
}
