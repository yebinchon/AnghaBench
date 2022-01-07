
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ uInt ;
typedef int uByte ;
struct TYPE_12__ {int bits; int exponent; } ;
typedef TYPE_1__ decNumber ;
typedef int decContext ;


 int DECNEG ;
 int DECUNUSED ;
 int decAddOp (TYPE_1__*,TYPE_1__*,TYPE_1__ const*,int *,int ,scalar_t__*) ;
 scalar_t__ decCheckOperands (TYPE_1__*,int ,TYPE_1__ const*,int *) ;
 int decNumberZero (TYPE_1__*) ;
 int decStatus (TYPE_1__*,scalar_t__,int *) ;

decNumber *
decNumberAbs (decNumber * res, const decNumber * rhs, decContext * set)
{
  decNumber dzero;
  uInt status = 0;






  decNumberZero (&dzero);
  dzero.exponent = rhs->exponent;
  decAddOp (res, &dzero, rhs, set, (uByte) (rhs->bits & DECNEG), &status);
  if (status != 0)
    decStatus (res, status, set);
  return res;
}
