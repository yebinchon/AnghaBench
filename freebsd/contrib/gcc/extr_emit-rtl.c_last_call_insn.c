
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 int CALL_P (scalar_t__) ;
 scalar_t__ PREV_INSN (scalar_t__) ;
 scalar_t__ get_last_insn () ;

rtx
last_call_insn (void)
{
  rtx insn;

  for (insn = get_last_insn ();
       insn && !CALL_P (insn);
       insn = PREV_INSN (insn))
    ;

  return insn;
}
