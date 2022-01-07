
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


typedef int uInt ;
typedef int uByte ;
struct TYPE_27__ {scalar_t__ digits; int bits; int* lsu; scalar_t__ exponent; } ;
typedef TYPE_1__ decNumber ;
struct TYPE_28__ {scalar_t__ digits; int extended; } ;
typedef TYPE_2__ decContext ;
typedef int Int ;
typedef scalar_t__ Flag ;


 int BADINT ;
 scalar_t__ COMPARE ;
 scalar_t__ COMPMAX ;
 scalar_t__ COMPMIN ;
 scalar_t__ COMPNAN ;
 int DECNAN ;
 int DECNEG ;
 int DECSNAN ;
 int DEC_Insufficient_storage ;
 scalar_t__ decCheckOperands (TYPE_1__*,TYPE_1__ const*,TYPE_1__ const*,TYPE_2__*) ;
 int decCompare (TYPE_1__ const*,TYPE_1__ const*) ;
 int decCopyFit (TYPE_1__*,TYPE_1__ const*,TYPE_2__*,int*,int *) ;
 int decFinish (TYPE_1__*,TYPE_2__*,int*,int *) ;
 int decNaNs (TYPE_1__*,TYPE_1__ const*,TYPE_1__ const*,int *) ;
 int decNumberZero (TYPE_1__*) ;
 TYPE_1__* decRoundOperand (TYPE_1__ const*,TYPE_2__*,int *) ;
 int free (TYPE_1__*) ;

decNumber *
decCompareOp (decNumber * res, const decNumber * lhs, const decNumber * rhs,
       decContext * set, Flag op, uInt * status)
{
  decNumber *alloclhs = ((void*)0);
  decNumber *allocrhs = ((void*)0);
  Int result = 0;
  uByte merged;
  uByte bits = 0;






  do
    {
      merged = (lhs->bits | rhs->bits) & (DECSNAN | DECNAN);
      if (merged)
 {
   if (op == COMPARE);
   else if (merged & DECSNAN);
   else
     {

       if (lhs->bits & rhs->bits & DECNAN);
       else
  {

    op = COMPMAX;
    if (lhs->bits & DECNAN)
      result = -1;
    else
      result = +1;
    break;
  }
     }
   op = COMPNAN;
   decNaNs (res, lhs, rhs, status);
   break;
 }

      result = decCompare (lhs, rhs);
    }
  while (0);

  if (result == BADINT)
    *status |= DEC_Insufficient_storage;
  else
    {
      if (op == COMPARE)
 {
   decNumberZero (res);
   if (result == 0)
     res->bits = bits;
   else
     {
       *res->lsu = 1;
       if (result < 0)
  res->bits = DECNEG;
     }
 }
      else if (op == COMPNAN);
      else
 {
   Int residue = 0;

   const decNumber *choice;
   if (result == 0)
     {

       uByte slhs = (lhs->bits & DECNEG);
       uByte srhs = (rhs->bits & DECNEG);
       if (slhs != srhs)
  {
    if (slhs)
      result = -1;
    else
      result = +1;
  }
       else if (slhs && srhs)
  {
    if (lhs->exponent < rhs->exponent)
      result = +1;
    else
      result = -1;

  }
       else
  {
    if (lhs->exponent > rhs->exponent)
      result = +1;
    else
      result = -1;

  }
     }

   if (op == COMPMIN)
     result = -result;
   choice = (result > 0 ? lhs : rhs);

   decCopyFit (res, choice, set, &residue, status);
   decFinish (res, set, &residue, status);
 }
    }
  if (allocrhs != ((void*)0))
    free (allocrhs);
  if (alloclhs != ((void*)0))
    free (alloclhs);
  return res;
}
