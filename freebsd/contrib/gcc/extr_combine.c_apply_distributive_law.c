
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;





 scalar_t__ COMMUTATIVE_ARITH_P (int ) ;
 scalar_t__ FLOAT_MODE_P (int ) ;
 int GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int GET_MODE_BITSIZE (int ) ;
 int GET_MODE_CLASS (int ) ;
 int GET_MODE_SIZE (int ) ;


 int MINUS ;

 int NOT ;
 scalar_t__ OBJECT_P (int ) ;
 int PLUS ;

 int SUBREG_BYTE (int ) ;
 int SUBREG_REG (int ) ;
 int TRULY_NOOP_TRUNCATION (int ,int ) ;
 int UNITS_PER_WORD ;
 int VECTOR_MODE_P (int ) ;
 int XEXP (int ,int) ;
 int XOR ;
 int expand_compound_operation (int ) ;
 int flag_unsafe_math_optimizations ;
 int gen_lowpart (int ,int ) ;
 scalar_t__ rtx_equal_p (int ,int ) ;
 int simplify_gen_binary (int,int ,int ,int ) ;
 int simplify_gen_unary (int ,int ,int ,int ) ;
 int subreg_lowpart_p (int ) ;

__attribute__((used)) static rtx
apply_distributive_law (rtx x)
{
  enum rtx_code code = GET_CODE (x);
  enum rtx_code inner_code;
  rtx lhs, rhs, other;
  rtx tem;



  if (FLOAT_MODE_P (GET_MODE (x))
      && ! flag_unsafe_math_optimizations)
    return x;


  if (code != 131 && code != 134 && code != XOR
      && code != PLUS && code != MINUS)
    return x;

  lhs = XEXP (x, 0);
  rhs = XEXP (x, 1);



  if (OBJECT_P (lhs) || OBJECT_P (rhs))
    return x;

  lhs = expand_compound_operation (lhs);
  rhs = expand_compound_operation (rhs);
  inner_code = GET_CODE (lhs);
  if (inner_code != GET_CODE (rhs))
    return x;


  switch (inner_code)
    {
    case 130:
    case 132:
    case 134:
    case 131:

      if (code == PLUS || code == MINUS)
 return x;
      break;

    case 129:
      if (code != PLUS && code != MINUS)
 return x;
      break;

    case 133:

      break;

    case 128:
      if (GET_MODE (SUBREG_REG (lhs)) != GET_MODE (SUBREG_REG (rhs))
   || SUBREG_BYTE (lhs) != SUBREG_BYTE (rhs)
   || ! subreg_lowpart_p (lhs)
   || (GET_MODE_CLASS (GET_MODE (lhs))
       != GET_MODE_CLASS (GET_MODE (SUBREG_REG (lhs))))
   || (GET_MODE_SIZE (GET_MODE (lhs))
       > GET_MODE_SIZE (GET_MODE (SUBREG_REG (lhs))))
   || VECTOR_MODE_P (GET_MODE (lhs))
   || GET_MODE_SIZE (GET_MODE (SUBREG_REG (lhs))) > UNITS_PER_WORD


   || !TRULY_NOOP_TRUNCATION
        (GET_MODE_BITSIZE (GET_MODE (x)),
  GET_MODE_BITSIZE (GET_MODE (SUBREG_REG (lhs)))))
 return x;

      tem = simplify_gen_binary (code, GET_MODE (SUBREG_REG (lhs)),
     SUBREG_REG (lhs), SUBREG_REG (rhs));
      return gen_lowpart (GET_MODE (x), tem);

    default:
      return x;
    }





  if (COMMUTATIVE_ARITH_P (lhs)
      && rtx_equal_p (XEXP (lhs, 0), XEXP (rhs, 0)))
    other = XEXP (lhs, 0), lhs = XEXP (lhs, 1), rhs = XEXP (rhs, 1);
  else if (COMMUTATIVE_ARITH_P (lhs)
    && rtx_equal_p (XEXP (lhs, 0), XEXP (rhs, 1)))
    other = XEXP (lhs, 0), lhs = XEXP (lhs, 1), rhs = XEXP (rhs, 0);
  else if (COMMUTATIVE_ARITH_P (lhs)
    && rtx_equal_p (XEXP (lhs, 1), XEXP (rhs, 0)))
    other = XEXP (lhs, 1), lhs = XEXP (lhs, 0), rhs = XEXP (rhs, 1);
  else if (rtx_equal_p (XEXP (lhs, 1), XEXP (rhs, 1)))
    other = XEXP (lhs, 1), lhs = XEXP (lhs, 0), rhs = XEXP (rhs, 0);
  else
    return x;


  tem = simplify_gen_binary (code, GET_MODE (x), lhs, rhs);



  if (code == XOR && inner_code == 131)
    {
      inner_code = 134;
      other = simplify_gen_unary (NOT, GET_MODE (x), other, GET_MODE (x));
    }




  return simplify_gen_binary (inner_code, GET_MODE (x),
         apply_distributive_law (tem), other);
}
