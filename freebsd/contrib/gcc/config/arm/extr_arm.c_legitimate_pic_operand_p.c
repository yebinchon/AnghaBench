
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CONST ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ PLUS ;
 scalar_t__ SYMBOL_REF ;
 int XEXP (int ,int ) ;

int
legitimate_pic_operand_p (rtx x)
{
  if (GET_CODE (x) == SYMBOL_REF
      || (GET_CODE (x) == CONST
   && GET_CODE (XEXP (x, 0)) == PLUS
   && GET_CODE (XEXP (XEXP (x, 0), 0)) == SYMBOL_REF))
    return 0;

  return 1;
}
