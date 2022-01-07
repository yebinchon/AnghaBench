
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 scalar_t__ MEM_P (int ) ;
 int REGNO (int ) ;
 scalar_t__ REG_P (int ) ;
 scalar_t__ STRICT_LOW_PART ;
 scalar_t__ SUBREG ;
 int XEXP (int ,int ) ;
 scalar_t__ ZERO_EXTRACT ;
 int cselib_invalidate_mem (int ) ;
 int cselib_invalidate_regno (int ,int ) ;
 scalar_t__ push_operand (int ,int ) ;
 int stack_pointer_rtx ;

void
cselib_invalidate_rtx (rtx dest)
{
  while (GET_CODE (dest) == SUBREG
  || GET_CODE (dest) == ZERO_EXTRACT
  || GET_CODE (dest) == STRICT_LOW_PART)
    dest = XEXP (dest, 0);

  if (REG_P (dest))
    cselib_invalidate_regno (REGNO (dest), GET_MODE (dest));
  else if (MEM_P (dest))
    cselib_invalidate_mem (dest);





  if (push_operand (dest, GET_MODE (dest)))
    cselib_invalidate_rtx (stack_pointer_rtx);
}
