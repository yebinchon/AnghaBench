
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 int CONSTANT_P (int ) ;
 int CONST_DOUBLE ;
 int CONST_INT ;
 int GET_CODE (int ) ;
 int GET_RTX_CLASS (int) ;
 int NEG ;
 int NOT ;
 int OBJECT_P (int ) ;






 int SUBREG ;
 int SUBREG_REG (int ) ;
 int avoid_constant_pool_reference (int ) ;

int
commutative_operand_precedence (rtx op)
{
  enum rtx_code code = GET_CODE (op);


  if (code == CONST_INT)
    return -7;
  if (code == CONST_DOUBLE)
    return -6;
  op = avoid_constant_pool_reference (op);
  code = GET_CODE (op);

  switch (GET_RTX_CLASS (code))
    {
    case 131:
      if (code == CONST_INT)
        return -5;
      if (code == CONST_DOUBLE)
        return -4;
      return -3;

    case 130:

      if (code == SUBREG && OBJECT_P (SUBREG_REG (op)))
        return -2;

      if (!CONSTANT_P (op))
        return 0;
      else

 return -3;

    case 129:


      return -1;

    case 132:



      return 4;

    case 133:



      return 2;

    case 128:

      if (code == NEG || code == NOT)
        return 1;

    default:
      return 0;
    }
}
