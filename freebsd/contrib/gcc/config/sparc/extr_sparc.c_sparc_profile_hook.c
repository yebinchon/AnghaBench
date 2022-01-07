
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int ASM_GENERATE_INTERNAL_LABEL (char*,char*,int) ;
 int LCT_NORMAL ;
 int MCOUNT_FUNCTION ;
 int Pmode ;
 int VOIDmode ;
 int emit_library_call (int ,int ,int ,int,int ,int ) ;
 int gen_rtx_SYMBOL_REF (int ,int ) ;
 int ggc_strdup (char*) ;

void
sparc_profile_hook (int labelno)
{
  char buf[32];
  rtx lab, fun;

  ASM_GENERATE_INTERNAL_LABEL (buf, "LP", labelno);
  lab = gen_rtx_SYMBOL_REF (Pmode, ggc_strdup (buf));
  fun = gen_rtx_SYMBOL_REF (Pmode, MCOUNT_FUNCTION);

  emit_library_call (fun, LCT_NORMAL, VOIDmode, 1, lab, Pmode);
}
