
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct simplify_plus_minus_op_data {scalar_t__ op; int neg; } ;
typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;



 scalar_t__ CONSTANT_P (scalar_t__) ;

 int const GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 int INTVAL (scalar_t__) ;



 scalar_t__ NULL_RTX ;

 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ constm1_rtx ;
 int gcc_assert (int) ;
 scalar_t__ gen_rtx_CONST (int ,scalar_t__) ;
 scalar_t__ gen_rtx_NEG (int,scalar_t__) ;
 scalar_t__ gen_rtx_fmt_ee (int,int,scalar_t__,scalar_t__) ;
 int memset (struct simplify_plus_minus_op_data*,int ,int) ;
 scalar_t__ neg_const_int (int,scalar_t__) ;
 scalar_t__ plus_constant (scalar_t__,int ) ;
 scalar_t__ simplify_binary_operation (int,int,scalar_t__,scalar_t__) ;
 scalar_t__ simplify_const_binary_operation (int,int,scalar_t__,scalar_t__) ;
 scalar_t__ simplify_plus_minus_op_data_cmp (struct simplify_plus_minus_op_data*,struct simplify_plus_minus_op_data*) ;
 scalar_t__ swap_commutative_operands_p (scalar_t__,scalar_t__) ;

__attribute__((used)) static rtx
simplify_plus_minus (enum rtx_code code, enum machine_mode mode, rtx op0,
       rtx op1)
{
  struct simplify_plus_minus_op_data ops[8];
  rtx result, tem;
  int n_ops = 2, input_ops = 2;
  int changed, n_constants = 0, canonicalized = 0;
  int i, j;

  memset (ops, 0, sizeof ops);





  ops[0].op = op0;
  ops[0].neg = 0;
  ops[1].op = op1;
  ops[1].neg = (code == 131);

  do
    {
      changed = 0;

      for (i = 0; i < n_ops; i++)
 {
   rtx this_op = ops[i].op;
   int this_neg = ops[i].neg;
   enum rtx_code this_code = GET_CODE (this_op);

   switch (this_code)
     {
     case 128:
     case 131:
       if (n_ops == 7)
  return NULL_RTX;

       ops[n_ops].op = XEXP (this_op, 1);
       ops[n_ops].neg = (this_code == 131) ^ this_neg;
       n_ops++;

       ops[i].op = XEXP (this_op, 0);
       input_ops++;
       changed = 1;
       canonicalized |= this_neg;
       break;

     case 130:
       ops[i].op = XEXP (this_op, 0);
       ops[i].neg = ! this_neg;
       changed = 1;
       canonicalized = 1;
       break;

     case 133:
       if (n_ops < 7
    && GET_CODE (XEXP (this_op, 0)) == 128
    && CONSTANT_P (XEXP (XEXP (this_op, 0), 0))
    && CONSTANT_P (XEXP (XEXP (this_op, 0), 1)))
  {
    ops[i].op = XEXP (XEXP (this_op, 0), 0);
    ops[n_ops].op = XEXP (XEXP (this_op, 0), 1);
    ops[n_ops].neg = this_neg;
    n_ops++;
    changed = 1;
           canonicalized = 1;
  }
       break;

     case 129:

       if (n_ops != 7)
  {
    ops[n_ops].op = constm1_rtx;
    ops[n_ops++].neg = this_neg;
    ops[i].op = XEXP (this_op, 0);
    ops[i].neg = !this_neg;
    changed = 1;
           canonicalized = 1;
  }
       break;

     case 132:
       n_constants++;
       if (this_neg)
  {
    ops[i].op = neg_const_int (mode, this_op);
    ops[i].neg = 0;
    changed = 1;
           canonicalized = 1;
  }
       break;

     default:
       break;
     }
 }
    }
  while (changed);

  if (n_constants > 1)
    canonicalized = 1;

  gcc_assert (n_ops >= 2);


  if (n_ops == 2)
    {
      enum rtx_code code = ops[0].neg || ops[1].neg ? 131 : 128;
      rtx lhs, rhs;



      if (ops[0].neg && ops[1].neg)
 {
   lhs = gen_rtx_NEG (mode, ops[0].op);
   rhs = ops[1].op;
 }
      else if (ops[0].neg)
 {
   lhs = ops[1].op;
   rhs = ops[0].op;
 }
      else
 {
   lhs = ops[0].op;
   rhs = ops[1].op;
 }

      return simplify_const_binary_operation (code, mode, lhs, rhs);
    }


  do
    {

      for (i = 1; i < n_ops; i++)
        {
          struct simplify_plus_minus_op_data save;
          j = i - 1;
          if (simplify_plus_minus_op_data_cmp (&ops[j], &ops[i]) < 0)
     continue;

          canonicalized = 1;
          save = ops[i];
          do
     ops[j + 1] = ops[j];
          while (j-- && simplify_plus_minus_op_data_cmp (&ops[j], &save) > 0);
          ops[j + 1] = save;
        }


      if (!canonicalized)
        return NULL_RTX;

      changed = 0;
      for (i = n_ops - 1; i > 0; i--)
 for (j = i - 1; j >= 0; j--)
   {
     rtx lhs = ops[j].op, rhs = ops[i].op;
     int lneg = ops[j].neg, rneg = ops[i].neg;

     if (lhs != 0 && rhs != 0)
       {
  enum rtx_code ncode = 128;

  if (lneg != rneg)
    {
      ncode = 131;
      if (lneg)
        tem = lhs, lhs = rhs, rhs = tem;
    }
  else if (swap_commutative_operands_p (lhs, rhs))
    tem = lhs, lhs = rhs, rhs = tem;

  if ((GET_CODE (lhs) == 133 || GET_CODE (lhs) == 132)
      && (GET_CODE (rhs) == 133 || GET_CODE (rhs) == 132))
    {
      rtx tem_lhs, tem_rhs;

      tem_lhs = GET_CODE (lhs) == 133 ? XEXP (lhs, 0) : lhs;
      tem_rhs = GET_CODE (rhs) == 133 ? XEXP (rhs, 0) : rhs;
      tem = simplify_binary_operation (ncode, mode, tem_lhs, tem_rhs);

      if (tem && !CONSTANT_P (tem))
        tem = gen_rtx_CONST (GET_MODE (tem), tem);
    }
  else
    tem = simplify_binary_operation (ncode, mode, lhs, rhs);





  if (tem
      && ! (GET_CODE (tem) == 133
     && GET_CODE (XEXP (tem, 0)) == ncode
     && XEXP (XEXP (tem, 0), 0) == lhs
     && XEXP (XEXP (tem, 0), 1) == rhs))
    {
      lneg &= rneg;
      if (GET_CODE (tem) == 130)
        tem = XEXP (tem, 0), lneg = !lneg;
      if (GET_CODE (tem) == 132 && lneg)
        tem = neg_const_int (mode, tem), lneg = 0;

      ops[i].op = tem;
      ops[i].neg = lneg;
      ops[j].op = NULL_RTX;
      changed = 1;
    }
       }
   }


      for (i = 0, j = 0; j < n_ops; j++)
        if (ops[j].op)
          {
     ops[i] = ops[j];
     i++;
          }
      n_ops = i;
    }
  while (changed);


  if (n_ops == 2
      && GET_CODE (ops[1].op) == 132
      && CONSTANT_P (ops[0].op)
      && ops[0].neg)
    return gen_rtx_fmt_ee (131, mode, ops[1].op, ops[0].op);







  if (n_ops > 1
      && GET_CODE (ops[n_ops - 1].op) == 132
      && CONSTANT_P (ops[n_ops - 2].op))
    {
      rtx value = ops[n_ops - 1].op;
      if (ops[n_ops - 1].neg ^ ops[n_ops - 2].neg)
 value = neg_const_int (mode, value);
      ops[n_ops - 2].op = plus_constant (ops[n_ops - 2].op, INTVAL (value));
      n_ops--;
    }



  for (i = 0; i < n_ops && ops[i].neg; i++)
    continue;
  if (i == n_ops)
    ops[0].op = gen_rtx_NEG (mode, ops[0].op);
  else if (i != 0)
    {
      tem = ops[0].op;
      ops[0] = ops[i];
      ops[i].op = tem;
      ops[i].neg = 1;
    }


  result = ops[0].op;
  for (i = 1; i < n_ops; i++)
    result = gen_rtx_fmt_ee (ops[i].neg ? 131 : 128,
        mode, result, ops[i].op);

  return result;
}
