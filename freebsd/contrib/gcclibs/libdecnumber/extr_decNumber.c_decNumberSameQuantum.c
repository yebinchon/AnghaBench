
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef int uByte ;
struct TYPE_12__ {int bits; scalar_t__ exponent; int* lsu; } ;
typedef TYPE_1__ decNumber ;
typedef int Unit ;


 int DECSPECIAL ;
 int DECUNUSED ;
 scalar_t__ decCheckOperands (TYPE_1__*,TYPE_1__ const*,TYPE_1__ const*,int ) ;
 scalar_t__ decNumberIsInfinite (TYPE_1__ const*) ;
 scalar_t__ decNumberIsNaN (TYPE_1__ const*) ;
 int decNumberZero (TYPE_1__*) ;

decNumber *
decNumberSameQuantum (decNumber * res, const decNumber * lhs, const decNumber * rhs)
{
  uByte merged;
  Unit ret = 0;






  merged = (lhs->bits | rhs->bits) & DECSPECIAL;
  if (merged)
    {
      if (decNumberIsNaN (lhs) && decNumberIsNaN (rhs))
 ret = 1;
      else if (decNumberIsInfinite (lhs) && decNumberIsInfinite (rhs))
 ret = 1;

    }
  else if (lhs->exponent == rhs->exponent)
    ret = 1;

  decNumberZero (res);
  *res->lsu = ret;
  return res;
}
