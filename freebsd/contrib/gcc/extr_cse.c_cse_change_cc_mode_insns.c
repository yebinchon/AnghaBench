
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 int INSN_P (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 int cse_change_cc_mode_insn (scalar_t__,scalar_t__) ;
 scalar_t__ reg_set_p (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
cse_change_cc_mode_insns (rtx start, rtx end, rtx newreg)
{
  rtx insn;

  for (insn = start; insn != end; insn = NEXT_INSN (insn))
    {
      if (! INSN_P (insn))
 continue;

      if (reg_set_p (newreg, insn))
 return;

      cse_change_cc_mode_insn (insn, newreg);
    }
}
