
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;





 int GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int PLUS ;
 int SCALAR_FLOAT_MODE_P (int ) ;
 int SPARC_SYMBOL_REF_TLS_P (int ) ;

 int SYMBOL_REF_TLS_MODEL (int ) ;
 int TARGET_VIS ;
 int VOIDmode ;
 int XEXP (int ,int ) ;
 int const_zero_operand (int ,int ) ;

bool
legitimate_constant_p (rtx x)
{
  rtx inner;

  switch (GET_CODE (x))
    {
    case 128:

      if (SYMBOL_REF_TLS_MODEL (x))
 return 0;
      break;

    case 131:
      inner = XEXP (x, 0);



      if (GET_CODE (inner) == PLUS
   && SPARC_SYMBOL_REF_TLS_P (XEXP (inner, 0)))
 return 0;
      break;

    case 130:
      if (GET_MODE (x) == VOIDmode)
        return 1;



      if (TARGET_VIS
   && SCALAR_FLOAT_MODE_P (GET_MODE (x))
   && const_zero_operand (x, GET_MODE (x)))
 return 1;

      return 0;

    case 129:


      if (TARGET_VIS
   && const_zero_operand (x, GET_MODE (x)))
 return 1;

      return 0;

    default:
      break;
    }

  return 1;
}
