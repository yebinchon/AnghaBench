
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef enum cpp_ttype { ____Placeholder_cpp_ttype } cpp_ttype ;
struct TYPE_22__ {int skip_eval; } ;
struct TYPE_23__ {TYPE_1__ state; } ;
typedef TYPE_2__ cpp_reader ;
typedef size_t cpp_num_part ;
struct TYPE_24__ {int unsignedp; int high; int low; int overflow; } ;
typedef TYPE_3__ cpp_num ;


 int CPP_DIV ;
 int CPP_DL_ERROR ;
 int CPP_MINUS ;
 size_t CPP_OPTION (TYPE_2__*,int ) ;
 size_t PART_PRECISION ;
 int cpp_error (TYPE_2__*,int ,char*) ;
 TYPE_3__ num_binary_op (TYPE_2__*,TYPE_3__,TYPE_3__,int ) ;
 scalar_t__ num_greater_eq (TYPE_3__,TYPE_3__,size_t) ;
 TYPE_3__ num_lshift (TYPE_3__,size_t,size_t) ;
 TYPE_3__ num_negate (TYPE_3__,size_t) ;
 int num_positive (TYPE_3__,size_t) ;
 int num_zerop (TYPE_3__) ;
 size_t precision ;

__attribute__((used)) static cpp_num
num_div_op (cpp_reader *pfile, cpp_num lhs, cpp_num rhs, enum cpp_ttype op)
{
  cpp_num result, sub;
  cpp_num_part mask;
  bool unsignedp = lhs.unsignedp || rhs.unsignedp;
  bool negate = 0, lhs_neg = 0;
  size_t i, precision = CPP_OPTION (pfile, precision);


  if (!unsignedp)
    {
      if (!num_positive (lhs, precision))
 negate = !negate, lhs_neg = 1, lhs = num_negate (lhs, precision);
      if (!num_positive (rhs, precision))
 negate = !negate, rhs = num_negate (rhs, precision);
    }


  if (rhs.high)
    {
      i = precision - 1;
      mask = (cpp_num_part) 1 << (i - PART_PRECISION);
      for (; ; i--, mask >>= 1)
 if (rhs.high & mask)
   break;
    }
  else if (rhs.low)
    {
      if (precision > PART_PRECISION)
 i = precision - PART_PRECISION - 1;
      else
 i = precision - 1;
      mask = (cpp_num_part) 1 << i;
      for (; ; i--, mask >>= 1)
 if (rhs.low & mask)
   break;
    }
  else
    {
      if (!pfile->state.skip_eval)
 cpp_error (pfile, CPP_DL_ERROR, "division by zero in #if");
      return lhs;
    }






  rhs.unsignedp = 1;
  lhs.unsignedp = 1;
  i = precision - i - 1;
  sub = num_lshift (rhs, precision, i);

  result.high = result.low = 0;
  for (;;)
    {
      if (num_greater_eq (lhs, sub, precision))
 {
   lhs = num_binary_op (pfile, lhs, sub, CPP_MINUS);
   if (i >= PART_PRECISION)
     result.high |= (cpp_num_part) 1 << (i - PART_PRECISION);
   else
     result.low |= (cpp_num_part) 1 << i;
 }
      if (i-- == 0)
 break;
      sub.low = (sub.low >> 1) | (sub.high << (PART_PRECISION - 1));
      sub.high >>= 1;
    }


  if (op == CPP_DIV)
    {
      result.unsignedp = unsignedp;
      result.overflow = 0;
      if (!unsignedp)
 {
   if (negate)
     result = num_negate (result, precision);
   result.overflow = (num_positive (result, precision) ^ !negate
        && !num_zerop (result));
 }

      return result;
    }


  lhs.unsignedp = unsignedp;
  lhs.overflow = 0;
  if (lhs_neg)
    lhs = num_negate (lhs, precision);

  return lhs;
}
