
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 scalar_t__ CALL ;
 int CALL_INSN ;
 int CODE_LABEL ;
 scalar_t__ GET_CODE (int ) ;
 int INSN ;
 int JUMP_INSN ;
 scalar_t__ LABEL_P (int ) ;
 scalar_t__ PARALLEL ;
 scalar_t__ RETURN ;
 scalar_t__ SET ;
 scalar_t__ SET_DEST (int ) ;
 int SET_SRC (int ) ;
 int XVECEXP (int ,int ,int) ;
 int XVECLEN (int ,int ) ;
 scalar_t__ pc_rtx ;

__attribute__((used)) static enum rtx_code
classify_insn (rtx x)
{
  if (LABEL_P (x))
    return CODE_LABEL;
  if (GET_CODE (x) == CALL)
    return CALL_INSN;
  if (GET_CODE (x) == RETURN)
    return JUMP_INSN;
  if (GET_CODE (x) == SET)
    {
      if (SET_DEST (x) == pc_rtx)
 return JUMP_INSN;
      else if (GET_CODE (SET_SRC (x)) == CALL)
 return CALL_INSN;
      else
 return INSN;
    }
  if (GET_CODE (x) == PARALLEL)
    {
      int j;
      for (j = XVECLEN (x, 0) - 1; j >= 0; j--)
 if (GET_CODE (XVECEXP (x, 0, j)) == CALL)
   return CALL_INSN;
 else if (GET_CODE (XVECEXP (x, 0, j)) == SET
   && SET_DEST (XVECEXP (x, 0, j)) == pc_rtx)
   return JUMP_INSN;
 else if (GET_CODE (XVECEXP (x, 0, j)) == SET
   && GET_CODE (SET_SRC (XVECEXP (x, 0, j))) == CALL)
   return CALL_INSN;
    }
  return INSN;
}
