
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int INSN_LOCATOR (int ) ;
 scalar_t__ INSN_P (int ) ;
 int emit_call_insn_after_noloc (int ,int ) ;
 int emit_call_insn_after_setloc (int ,int ,int ) ;

rtx
emit_call_insn_after (rtx pattern, rtx after)
{
  if (INSN_P (after))
    return emit_call_insn_after_setloc (pattern, after, INSN_LOCATOR (after));
  else
    return emit_call_insn_after_noloc (pattern, after);
}
