
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ GET_CODE (int ) ;
 scalar_t__ INT_REG_OK_FOR_BASE_P (int ,int) ;
 scalar_t__ INT_REG_OK_FOR_INDEX_P (int ,int) ;
 scalar_t__ PLUS ;
 scalar_t__ REG_P (int ) ;
 int XEXP (int ,int) ;
 scalar_t__ reload_in_progress ;

__attribute__((used)) static bool
legitimate_indexed_address_p (rtx x, int strict)
{
  rtx op0, op1;

  if (GET_CODE (x) != PLUS)
    return 0;

  op0 = XEXP (x, 0);
  op1 = XEXP (x, 1);



  if (!strict
      && reload_in_progress
      && (REG_P (op0) || GET_CODE (op0) == PLUS)
      && REG_P (op1))
    return 1;

  return (REG_P (op0) && REG_P (op1)
   && ((INT_REG_OK_FOR_BASE_P (op0, strict)
        && INT_REG_OK_FOR_INDEX_P (op1, strict))
       || (INT_REG_OK_FOR_BASE_P (op1, strict)
    && INT_REG_OK_FOR_INDEX_P (op0, strict))));
}
