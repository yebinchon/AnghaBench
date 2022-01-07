
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum reg_note { ____Placeholder_reg_note } reg_note ;


 int INSN_P (scalar_t__) ;
 scalar_t__ REG_NOTES (scalar_t__) ;
 int REG_NOTE_KIND (scalar_t__) ;
 scalar_t__ XEXP (scalar_t__,int) ;
 int gcc_assert (scalar_t__) ;

rtx
find_reg_note (rtx insn, enum reg_note kind, rtx datum)
{
  rtx link;

  gcc_assert (insn);


  if (! INSN_P (insn))
    return 0;
  if (datum == 0)
    {
      for (link = REG_NOTES (insn); link; link = XEXP (link, 1))
 if (REG_NOTE_KIND (link) == kind)
   return link;
      return 0;
    }

  for (link = REG_NOTES (insn); link; link = XEXP (link, 1))
    if (REG_NOTE_KIND (link) == kind && datum == XEXP (link, 0))
      return link;
  return 0;
}
