
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef int HOST_WIDE_INT ;


 scalar_t__ CONST_INT ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int INTVAL (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 scalar_t__ PLUS ;
 scalar_t__ REG ;
 scalar_t__ SUBREG ;
 scalar_t__ SUBREG_REG (scalar_t__) ;
 scalar_t__ XEXP (scalar_t__,int) ;

bool
s390_decompose_shift_count (rtx op, rtx *base, HOST_WIDE_INT *offset)
{
  HOST_WIDE_INT off = 0;



  if (GET_CODE (op) == CONST_INT)
    {
      off = INTVAL (op);
      op = NULL_RTX;
    }
  if (op && GET_CODE (op) == PLUS && GET_CODE (XEXP (op, 1)) == CONST_INT)
    {
      off = INTVAL (XEXP (op, 1));
      op = XEXP (op, 0);
    }
  while (op && GET_CODE (op) == SUBREG)
    op = SUBREG_REG (op);

  if (op && GET_CODE (op) != REG)
    return 0;

  if (offset)
    *offset = off;
  if (base)
    *base = op;

   return 1;
}
