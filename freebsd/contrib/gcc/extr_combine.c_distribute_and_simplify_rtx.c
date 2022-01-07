
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int AND ;
 int ARITHMETIC_P (int ) ;
 int GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int IOR ;
 scalar_t__ NOT ;
 int NULL_RTX ;
 int SET ;
 int XEXP (int ,int) ;
 int XOR ;
 int apply_distributive_law (int ) ;
 scalar_t__ rtx_cost (int ,int ) ;
 int simplify_gen_binary (int,int,int ,int ) ;

__attribute__((used)) static rtx
distribute_and_simplify_rtx (rtx x, int n)
{
  enum machine_mode mode;
  enum rtx_code outer_code, inner_code;
  rtx decomposed, distributed, inner_op0, inner_op1, new_op0, new_op1, tmp;

  decomposed = XEXP (x, n);
  if (!ARITHMETIC_P (decomposed))
    return NULL_RTX;

  mode = GET_MODE (x);
  outer_code = GET_CODE (x);
  distributed = XEXP (x, !n);

  inner_code = GET_CODE (decomposed);
  inner_op0 = XEXP (decomposed, 0);
  inner_op1 = XEXP (decomposed, 1);



  if (outer_code == AND && inner_code == XOR && GET_CODE (distributed) == NOT)
    {
      distributed = XEXP (distributed, 0);
      outer_code = IOR;
    }

  if (n == 0)
    {

      new_op0 = simplify_gen_binary (outer_code, mode, inner_op0, distributed);
      new_op1 = simplify_gen_binary (outer_code, mode, inner_op1, distributed);
    }
  else
    {

      new_op0 = simplify_gen_binary (outer_code, mode, distributed, inner_op0);
      new_op1 = simplify_gen_binary (outer_code, mode, distributed, inner_op1);
    }

  tmp = apply_distributive_law (simplify_gen_binary (inner_code, mode,
           new_op0, new_op1));
  if (GET_CODE (tmp) != outer_code
      && rtx_cost (tmp, SET) < rtx_cost (x, SET))
    return tmp;

  return NULL_RTX;
}
