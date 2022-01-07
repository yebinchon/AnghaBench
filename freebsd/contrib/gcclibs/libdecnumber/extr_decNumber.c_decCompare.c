
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int bits; scalar_t__ exponent; int digits; int lsu; } ;
typedef TYPE_1__ decNumber ;
typedef int Int ;


 int BADINT ;
 int D2U (int ) ;
 int DECINF ;
 scalar_t__ ISZERO (TYPE_1__ const*) ;
 scalar_t__ decNumberIsInfinite (TYPE_1__ const*) ;
 scalar_t__ decNumberIsNegative (TYPE_1__ const*) ;
 int decUnitCompare (int ,int ,int ,int ,scalar_t__) ;

__attribute__((used)) static Int
decCompare (const decNumber * lhs, const decNumber * rhs)
{
  Int result;
  Int sigr;
  Int compare;
  result = 1;
  if (ISZERO (lhs))
    result = 0;
  else if (decNumberIsNegative (lhs))
    result = -1;
  sigr = 1;
  if (ISZERO (rhs))
    sigr = 0;
  else if (decNumberIsNegative (rhs))
    sigr = -1;
  if (result > sigr)
    return +1;
  if (result < sigr)
    return -1;


  if (result == 0)
    return 0;

  if ((lhs->bits | rhs->bits) & DECINF)
    {
      if (lhs->bits == rhs->bits)
 result = 0;
      else if (decNumberIsInfinite (rhs))
 result = -result;
      return result;
    }


  if (lhs->exponent > rhs->exponent)
    {

      const decNumber *temp = lhs;
      lhs = rhs;
      rhs = temp;
      result = -result;
    }

  compare = decUnitCompare (lhs->lsu, D2U (lhs->digits),
       rhs->lsu, D2U (rhs->digits),
       rhs->exponent - lhs->exponent);

  if (compare != BADINT)
    compare *= result;
  return compare;
}
