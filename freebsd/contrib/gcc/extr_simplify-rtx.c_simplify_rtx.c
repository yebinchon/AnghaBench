
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int GET_CODE (int *) ;
 int GET_MODE (int *) ;
 int GET_RTX_CLASS (int) ;
 int HIGH ;
 int LO_SUM ;
 int SUBREG ;
 int SUBREG_BYTE (int *) ;
 int * SUBREG_REG (int *) ;
 int VOIDmode ;
 int * XEXP (int *,int) ;
 int rtx_equal_p (int *,int *) ;
 int * simplify_binary_operation (int,int,int *,int *) ;
 int * simplify_gen_binary (int,int,int *,int *) ;
 int * simplify_gen_subreg (int,int *,int,int ) ;
 int * simplify_relational_operation (int,int,int,int *,int *) ;
 int * simplify_ternary_operation (int,int,int,int *,int *,int *) ;
 int * simplify_unary_operation (int,int,int *,int) ;
 int swap_commutative_operands_p (int *,int *) ;

rtx
simplify_rtx (rtx x)
{
  enum rtx_code code = GET_CODE (x);
  enum machine_mode mode = GET_MODE (x);

  switch (GET_RTX_CLASS (code))
    {
    case 128:
      return simplify_unary_operation (code, mode,
           XEXP (x, 0), GET_MODE (XEXP (x, 0)));
    case 134:
      if (swap_commutative_operands_p (XEXP (x, 0), XEXP (x, 1)))
 return simplify_gen_binary (code, mode, XEXP (x, 1), XEXP (x, 0));



    case 136:
      return simplify_binary_operation (code, mode, XEXP (x, 0), XEXP (x, 1));

    case 129:
    case 135:
      return simplify_ternary_operation (code, mode, GET_MODE (XEXP (x, 0)),
      XEXP (x, 0), XEXP (x, 1),
      XEXP (x, 2));

    case 132:
    case 133:
      return simplify_relational_operation (code, mode,
                                            ((GET_MODE (XEXP (x, 0))
                                             != VOIDmode)
                                            ? GET_MODE (XEXP (x, 0))
                                            : GET_MODE (XEXP (x, 1))),
                                            XEXP (x, 0),
                                            XEXP (x, 1));

    case 131:
      if (code == SUBREG)
 return simplify_gen_subreg (mode, SUBREG_REG (x),
        GET_MODE (SUBREG_REG (x)),
        SUBREG_BYTE (x));
      break;

    case 130:
      if (code == LO_SUM)
 {

   if (GET_CODE (XEXP (x, 0)) == HIGH
       && rtx_equal_p (XEXP (XEXP (x, 0), 0), XEXP (x, 1)))
   return XEXP (x, 1);
 }
      break;

    default:
      break;
    }
  return ((void*)0);
}
