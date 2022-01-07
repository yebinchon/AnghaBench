
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int constrain_operands (int ) ;
 int extract_insn_cached (int ) ;
 int fatal_insn_not_found (int ) ;
 int reload_completed ;
 int which_alternative ;

void
extract_constrain_insn_cached (rtx insn)
{
  extract_insn_cached (insn);
  if (which_alternative == -1
      && !constrain_operands (reload_completed))
    fatal_insn_not_found (insn);
}
