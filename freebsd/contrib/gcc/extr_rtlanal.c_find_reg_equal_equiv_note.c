
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * rtx ;


 int INSN_P (int *) ;
 scalar_t__ REG_EQUAL ;
 scalar_t__ REG_EQUIV ;
 int * REG_NOTES (int *) ;
 scalar_t__ REG_NOTE_KIND (int *) ;
 int * XEXP (int *,int) ;
 scalar_t__ single_set (int *) ;

rtx
find_reg_equal_equiv_note (rtx insn)
{
  rtx link;

  if (!INSN_P (insn))
    return 0;
  for (link = REG_NOTES (insn); link; link = XEXP (link, 1))
    if (REG_NOTE_KIND (link) == REG_EQUAL
 || REG_NOTE_KIND (link) == REG_EQUIV)
      {
 if (single_set (insn) == 0)
   return 0;
 return link;
      }
  return ((void*)0);
}
