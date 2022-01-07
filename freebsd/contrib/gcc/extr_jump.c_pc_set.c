
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ GET_CODE (int ) ;
 int JUMP_P (int ) ;
 int NULL_RTX ;
 scalar_t__ PARALLEL ;
 int PATTERN (int ) ;
 scalar_t__ PC ;
 scalar_t__ SET ;
 int SET_DEST (int ) ;
 int XVECEXP (int ,int ,int ) ;

rtx
pc_set (rtx insn)
{
  rtx pat;
  if (!JUMP_P (insn))
    return NULL_RTX;
  pat = PATTERN (insn);



  if (GET_CODE (pat) == PARALLEL)
    pat = XVECEXP (pat, 0, 0);
  if (GET_CODE (pat) == SET && GET_CODE (SET_DEST (pat)) == PC)
    return pat;

  return NULL_RTX;
}
