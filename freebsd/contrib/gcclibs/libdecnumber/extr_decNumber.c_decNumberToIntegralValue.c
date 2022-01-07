
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef scalar_t__ uInt ;
struct TYPE_24__ {int bits; scalar_t__ exponent; int digits; } ;
typedef TYPE_1__ decNumber ;
struct TYPE_25__ {scalar_t__ traps; int digits; } ;
typedef TYPE_2__ decContext ;


 int DECSPECIAL ;
 int DECUNUSED ;
 scalar_t__ decCheckOperands (TYPE_1__*,int ,TYPE_1__ const*,TYPE_2__*) ;
 int decNaNs (TYPE_1__*,TYPE_1__ const*,int *,scalar_t__*) ;
 TYPE_1__* decNumberCopy (TYPE_1__*,TYPE_1__ const*) ;
 scalar_t__ decNumberIsInfinite (TYPE_1__ const*) ;
 TYPE_1__* decNumberQuantize (TYPE_1__*,TYPE_1__ const*,TYPE_1__*,TYPE_2__*) ;
 int decNumberZero (TYPE_1__*) ;
 int decStatus (TYPE_1__*,scalar_t__,TYPE_2__*) ;

decNumber *
decNumberToIntegralValue (decNumber * res, const decNumber * rhs, decContext * set)
{
  decNumber dn;
  decContext workset;







  if (rhs->bits & DECSPECIAL)
    {
      uInt status = 0;
      if (decNumberIsInfinite (rhs))
 decNumberCopy (res, rhs);
      else
 decNaNs (res, rhs, ((void*)0), &status);
      if (status != 0)
 decStatus (res, status, set);
      return res;
    }


  if (rhs->exponent >= 0)
    return decNumberCopy (res, rhs);

  workset = *set;
  workset.digits = rhs->digits;
  workset.traps = 0;
  decNumberZero (&dn);
  return decNumberQuantize (res, rhs, &dn, &workset);
}
