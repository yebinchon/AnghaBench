
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CONSTANT_P (int ) ;
 int GET_CODE (int ) ;


 scalar_t__ REG_P (int ) ;
 int XEXP (int ,int) ;

__attribute__((used)) static bool
simple_rhs_p (rtx rhs)
{
  rtx op0, op1;

  if (CONSTANT_P (rhs)
      || REG_P (rhs))
    return 1;

  switch (GET_CODE (rhs))
    {
    case 128:
    case 129:
      op0 = XEXP (rhs, 0);
      op1 = XEXP (rhs, 1);

      if (REG_P (op0) && CONSTANT_P (op1))
 return 1;
      if (REG_P (op1) && CONSTANT_P (op0))
 return 1;

      return 0;

    default:
      return 0;
    }
}
