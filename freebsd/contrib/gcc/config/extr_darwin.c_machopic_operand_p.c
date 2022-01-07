
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CONST ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ MACHOPIC_JUST_INDIRECT ;
 scalar_t__ MINUS ;
 scalar_t__ SYMBOL_REF ;
 int XEXP (int ,int) ;
 int machopic_symbol_defined_p (int ) ;

int
machopic_operand_p (rtx op)
{
  if (MACHOPIC_JUST_INDIRECT)
    {
      while (GET_CODE (op) == CONST)
 op = XEXP (op, 0);

      if (GET_CODE (op) == SYMBOL_REF)
 return machopic_symbol_defined_p (op);
      else
 return 0;
    }

  while (GET_CODE (op) == CONST)
    op = XEXP (op, 0);

  if (GET_CODE (op) == MINUS
      && GET_CODE (XEXP (op, 0)) == SYMBOL_REF
      && GET_CODE (XEXP (op, 1)) == SYMBOL_REF
      && machopic_symbol_defined_p (XEXP (op, 0))
      && machopic_symbol_defined_p (XEXP (op, 1)))
      return 1;

  return 0;
}
