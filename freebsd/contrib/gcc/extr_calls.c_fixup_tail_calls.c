
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ NEXT_INSN (scalar_t__) ;
 scalar_t__ NOTE_INSN_FUNCTION_BEG ;
 scalar_t__ NOTE_LINE_NUMBER (scalar_t__) ;
 scalar_t__ NOTE_P (scalar_t__) ;
 int REG_EQUIV ;
 scalar_t__ find_reg_note (scalar_t__,int ,int ) ;
 scalar_t__ get_insns () ;
 int remove_note (scalar_t__,scalar_t__) ;

void
fixup_tail_calls (void)
{
  rtx insn;

  for (insn = get_insns (); insn; insn = NEXT_INSN (insn))
    {


      if (NOTE_P (insn)
   && NOTE_LINE_NUMBER (insn) == NOTE_INSN_FUNCTION_BEG)
 break;

      while (1)
 {
   rtx note = find_reg_note (insn, REG_EQUIV, 0);
   if (note)
     {


       remove_note (insn, note);
       continue;
     }
   break;
 }
    }
}
