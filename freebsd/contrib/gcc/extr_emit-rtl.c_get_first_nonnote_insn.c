
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ GET_CODE (int ) ;
 scalar_t__ NONJUMP_INSN_P (scalar_t__) ;
 scalar_t__ NOTE_P (scalar_t__) ;
 int PATTERN (scalar_t__) ;
 scalar_t__ SEQUENCE ;
 scalar_t__ XVECEXP (int ,int ,int ) ;
 scalar_t__ first_insn ;
 scalar_t__ next_insn (scalar_t__) ;

rtx
get_first_nonnote_insn (void)
{
  rtx insn = first_insn;

  if (insn)
    {
      if (NOTE_P (insn))
 for (insn = next_insn (insn);
      insn && NOTE_P (insn);
      insn = next_insn (insn))
   continue;
      else
 {
   if (NONJUMP_INSN_P (insn)
       && GET_CODE (PATTERN (insn)) == SEQUENCE)
     insn = XVECEXP (PATTERN (insn), 0, 0);
 }
    }

  return insn;
}
