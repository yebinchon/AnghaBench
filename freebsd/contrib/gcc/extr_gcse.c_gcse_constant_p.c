
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ COMPARE ;
 int CONSTANT_P (int ) ;
 scalar_t__ CONST_INT ;
 int FLOAT_MODE_P (int ) ;
 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 scalar_t__ REGNO (int ) ;
 scalar_t__ REG_P (int ) ;
 int XEXP (int ,int) ;

__attribute__((used)) static bool
gcse_constant_p (rtx x)
{

  if (GET_CODE (x) == COMPARE
      && GET_CODE (XEXP (x, 0)) == CONST_INT
      && GET_CODE (XEXP (x, 1)) == CONST_INT)
    return 1;



  if (GET_CODE(x) == COMPARE
      && REG_P (XEXP (x, 0)) && REG_P (XEXP (x, 1))
      && REGNO (XEXP (x, 0)) == REGNO (XEXP (x, 1))
      && ! FLOAT_MODE_P (GET_MODE (XEXP (x, 0)))
      && ! FLOAT_MODE_P (GET_MODE (XEXP (x, 1))))
    return 1;

  return CONSTANT_P (x);
}
