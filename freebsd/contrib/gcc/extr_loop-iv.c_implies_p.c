
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ EQ ;
 scalar_t__ GE ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 scalar_t__ GT ;
 scalar_t__ LE ;
 scalar_t__ LT ;
 int MINUS ;
 scalar_t__ REG_P (scalar_t__) ;
 scalar_t__ SCALAR_INT_MODE_P (int) ;
 int VOIDmode ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ const1_rtx ;
 scalar_t__ const_true_rtx ;
 scalar_t__ rtx_equal_p (scalar_t__,scalar_t__) ;
 scalar_t__ simplify_gen_binary (int ,int,scalar_t__,scalar_t__) ;
 scalar_t__ simplify_replace_rtx (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static bool
implies_p (rtx a, rtx b)
{
  rtx op0, op1, opb0, opb1, r;
  enum machine_mode mode;

  if (GET_CODE (a) == EQ)
    {
      op0 = XEXP (a, 0);
      op1 = XEXP (a, 1);

      if (REG_P (op0))
 {
   r = simplify_replace_rtx (b, op0, op1);
   if (r == const_true_rtx)
     return 1;
 }

      if (REG_P (op1))
 {
   r = simplify_replace_rtx (b, op1, op0);
   if (r == const_true_rtx)
     return 1;
 }
    }


  if ((GET_CODE (a) == GT || GET_CODE (a) == LT)
      && (GET_CODE (b) == GE || GET_CODE (b) == LE))
    {
      op0 = XEXP (a, 0);
      op1 = XEXP (a, 1);
      opb0 = XEXP (b, 0);
      opb1 = XEXP (b, 1);

      if (GET_CODE (a) == GT)
 {
   r = op0;
   op0 = op1;
   op1 = r;
 }

      if (GET_CODE (b) == GE)
 {
   r = opb0;
   opb0 = opb1;
   opb1 = r;
 }

      mode = GET_MODE (op0);
      if (mode != GET_MODE (opb0))
 mode = VOIDmode;
      else if (mode == VOIDmode)
 {
   mode = GET_MODE (op1);
   if (mode != GET_MODE (opb1))
     mode = VOIDmode;
 }

      if (SCALAR_INT_MODE_P (mode)
   && rtx_equal_p (op1, opb1)
   && simplify_gen_binary (MINUS, mode, opb0, op0) == const1_rtx)
 return 1;
    }

  return 0;
}
