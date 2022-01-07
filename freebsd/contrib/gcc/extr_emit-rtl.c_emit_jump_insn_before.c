
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int INSN_LOCATOR (int ) ;
 scalar_t__ INSN_P (int ) ;
 int emit_jump_insn_before_noloc (int ,int ) ;
 int emit_jump_insn_before_setloc (int ,int ,int ) ;

rtx
emit_jump_insn_before (rtx pattern, rtx before)
{
  if (INSN_P (before))
    return emit_jump_insn_before_setloc (pattern, before, INSN_LOCATOR (before));
  else
    return emit_jump_insn_before_noloc (pattern, before);
}
