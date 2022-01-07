
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CALL_P (int ) ;
 scalar_t__ CLOBBER ;
 scalar_t__ COND_EXEC ;
 int COND_EXEC_CODE (int ) ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ PARALLEL ;
 int PATTERN (int ) ;
 int REG_DEAD ;
 scalar_t__ SET ;
 int SET_DEST (int ) ;
 int XVECEXP (int ,int ,int) ;
 int XVECLEN (int ,int ) ;
 int covers_regno_p (int ,unsigned int) ;
 scalar_t__ find_regno_fusage (int ,scalar_t__,unsigned int) ;
 scalar_t__ find_regno_note (int ,int ,unsigned int) ;

int
dead_or_set_regno_p (rtx insn, unsigned int test_regno)
{
  rtx pattern;


  if (find_regno_note (insn, REG_DEAD, test_regno))
    return 1;

  if (CALL_P (insn)
      && find_regno_fusage (insn, CLOBBER, test_regno))
    return 1;

  pattern = PATTERN (insn);

  if (GET_CODE (pattern) == COND_EXEC)
    pattern = COND_EXEC_CODE (pattern);

  if (GET_CODE (pattern) == SET)
    return covers_regno_p (SET_DEST (pattern), test_regno);
  else if (GET_CODE (pattern) == PARALLEL)
    {
      int i;

      for (i = XVECLEN (pattern, 0) - 1; i >= 0; i--)
 {
   rtx body = XVECEXP (pattern, 0, i);

   if (GET_CODE (body) == COND_EXEC)
     body = COND_EXEC_CODE (body);

   if ((GET_CODE (body) == SET || GET_CODE (body) == CLOBBER)
       && covers_regno_p (SET_DEST (body), test_regno))
     return 1;
 }
    }

  return 0;
}
