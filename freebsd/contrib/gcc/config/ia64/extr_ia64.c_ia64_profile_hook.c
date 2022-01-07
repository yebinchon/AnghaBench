
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_2__ {char* (* strip_name_encoding ) (int ) ;} ;
typedef int SYMBOL_REF_FLAGS ;


 int ASM_GENERATE_INTERNAL_LABEL (char*,char*,int) ;
 int BR_REG (int ) ;
 int LCT_NORMAL ;
 scalar_t__ NO_PROFILE_COUNTERS ;
 int Pmode ;
 int SYMBOL_FLAG_LOCAL ;
 int VOIDmode ;
 int const0_rtx ;
 int emit_insn (int ) ;
 int emit_library_call (int ,int ,int ,int,int ,int ,int ,int ,int ,int ) ;
 int gen_ip_value (int ) ;
 int gen_mcount_func_rtx () ;
 int gen_reg_rtx (int ) ;
 int gen_rtx_REG (int ,int ) ;
 int gen_rtx_SYMBOL_REF (int ,char const*) ;
 int ggc_strdup (char*) ;
 char* stub1 (int ) ;
 TYPE_1__ targetm ;

void
ia64_profile_hook (int labelno)
{
  rtx label, ip;

  if (NO_PROFILE_COUNTERS)
    label = const0_rtx;
  else
    {
      char buf[30];
      const char *label_name;
      ASM_GENERATE_INTERNAL_LABEL (buf, "LP", labelno);
      label_name = (*targetm.strip_name_encoding) (ggc_strdup (buf));
      label = gen_rtx_SYMBOL_REF (Pmode, label_name);
      SYMBOL_REF_FLAGS (label) = SYMBOL_FLAG_LOCAL;
    }
  ip = gen_reg_rtx (Pmode);
  emit_insn (gen_ip_value (ip));
  emit_library_call (gen_mcount_func_rtx (), LCT_NORMAL,
                     VOIDmode, 3,
       gen_rtx_REG (Pmode, BR_REG (0)), Pmode,
       ip, Pmode,
       label, Pmode);
}
