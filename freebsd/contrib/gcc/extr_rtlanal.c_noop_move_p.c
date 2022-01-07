
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CLOBBER ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ INSN_CODE (int ) ;
 scalar_t__ NOOP_MOVE_INSN_CODE ;
 int NULL_RTX ;
 scalar_t__ PARALLEL ;
 int PATTERN (int ) ;
 int REG_EQUAL ;
 int REG_RETVAL ;
 scalar_t__ SET ;
 scalar_t__ USE ;
 int XVECEXP (int ,int ,int) ;
 int XVECLEN (int ,int ) ;
 scalar_t__ find_reg_note (int ,int ,int ) ;
 scalar_t__ set_noop_p (int ) ;

int
noop_move_p (rtx insn)
{
  rtx pat = PATTERN (insn);

  if (INSN_CODE (insn) == NOOP_MOVE_INSN_CODE)
    return 1;


  if (find_reg_note (insn, REG_EQUAL, NULL_RTX))
    return 0;



  if (find_reg_note (insn, REG_RETVAL, NULL_RTX))
    return 0;

  if (GET_CODE (pat) == SET && set_noop_p (pat))
    return 1;

  if (GET_CODE (pat) == PARALLEL)
    {
      int i;


      for (i = 0; i < XVECLEN (pat, 0); i++)
 {
   rtx tem = XVECEXP (pat, 0, i);

   if (GET_CODE (tem) == USE
       || GET_CODE (tem) == CLOBBER)
     continue;

   if (GET_CODE (tem) != SET || ! set_noop_p (tem))
     return 0;
 }

      return 1;
    }
  return 0;
}
