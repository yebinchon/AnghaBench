
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ GET_CODE (int ) ;
 scalar_t__ JUMP_P (int ) ;
 scalar_t__ LABEL_REF ;
 int NULL_RTX ;
 scalar_t__ PARALLEL ;
 int PATTERN (int ) ;
 int REG_LABEL ;
 scalar_t__ SET ;
 scalar_t__ SET_DEST (int ) ;
 int SET_SRC (int ) ;
 scalar_t__ USE ;
 int XEXP (int ,int ) ;
 int XVECEXP (int ,int ,int) ;
 int XVECLEN (int ,int ) ;
 scalar_t__ computed_jump_p_1 (int ) ;
 scalar_t__ find_reg_note (int ,int ,int ) ;
 scalar_t__ pc_rtx ;

int
computed_jump_p (rtx insn)
{
  int i;
  if (JUMP_P (insn))
    {
      rtx pat = PATTERN (insn);

      if (find_reg_note (insn, REG_LABEL, NULL_RTX))
 return 0;
      else if (GET_CODE (pat) == PARALLEL)
 {
   int len = XVECLEN (pat, 0);
   int has_use_labelref = 0;

   for (i = len - 1; i >= 0; i--)
     if (GET_CODE (XVECEXP (pat, 0, i)) == USE
  && (GET_CODE (XEXP (XVECEXP (pat, 0, i), 0))
      == LABEL_REF))
       has_use_labelref = 1;

   if (! has_use_labelref)
     for (i = len - 1; i >= 0; i--)
       if (GET_CODE (XVECEXP (pat, 0, i)) == SET
    && SET_DEST (XVECEXP (pat, 0, i)) == pc_rtx
    && computed_jump_p_1 (SET_SRC (XVECEXP (pat, 0, i))))
  return 1;
 }
      else if (GET_CODE (pat) == SET
        && SET_DEST (pat) == pc_rtx
        && computed_jump_p_1 (SET_SRC (pat)))
 return 1;
    }
  return 0;
}
