
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uInt ;
typedef int decNumber ;
typedef int decContext ;


 int decMultiplyOp (int *,int const*,int const*,int *,scalar_t__*) ;
 int decStatus (int *,scalar_t__,int *) ;

decNumber *
decNumberMultiply (decNumber * res, const decNumber * lhs,
     const decNumber * rhs, decContext * set)
{
  uInt status = 0;
  decMultiplyOp (res, lhs, rhs, set, &status);
  if (status != 0)
    decStatus (res, status, set);
  return res;
}
