
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CALL ;
 scalar_t__ CLOBBER ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ PARALLEL ;
 int PATTERN (int ) ;
 scalar_t__ SET ;
 int XVECEXP (int ,int ,int) ;
 int XVECLEN (int ,int ) ;
 int mark_call (int ) ;
 int mark_clobber (int ,int ) ;
 int mark_set (int ,int ) ;

__attribute__((used)) static void
mark_oprs_set (rtx insn)
{
  rtx pat = PATTERN (insn);
  int i;

  if (GET_CODE (pat) == SET)
    mark_set (pat, insn);
  else if (GET_CODE (pat) == PARALLEL)
    for (i = 0; i < XVECLEN (pat, 0); i++)
      {
 rtx x = XVECEXP (pat, 0, i);

 if (GET_CODE (x) == SET)
   mark_set (x, insn);
 else if (GET_CODE (x) == CLOBBER)
   mark_clobber (x, insn);
 else if (GET_CODE (x) == CALL)
   mark_call (insn);
      }

  else if (GET_CODE (pat) == CLOBBER)
    mark_clobber (pat, insn);
  else if (GET_CODE (pat) == CALL)
    mark_call (insn);
}
