
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef scalar_t__ uInt ;
struct TYPE_25__ {scalar_t__ digits; } ;
typedef TYPE_1__ decNumber ;
struct TYPE_26__ {scalar_t__ digits; int extended; } ;
typedef TYPE_2__ decContext ;
typedef int Int ;


 int DECUNUSED ;
 scalar_t__ decCheckOperands (TYPE_1__*,int ,TYPE_1__ const*,TYPE_2__*) ;
 int decCopyFit (TYPE_1__*,TYPE_1__ const*,TYPE_2__*,int *,scalar_t__*) ;
 int decFinish (TYPE_1__*,TYPE_2__*,int *,scalar_t__*) ;
 int decNaNs (TYPE_1__*,TYPE_1__ const*,int *,scalar_t__*) ;
 scalar_t__ decNumberIsNaN (TYPE_1__ const*) ;
 TYPE_1__* decRoundOperand (TYPE_1__ const*,TYPE_2__*,scalar_t__*) ;
 int decStatus (TYPE_1__*,scalar_t__,TYPE_2__*) ;
 int decTrim (TYPE_1__*,int,int *) ;
 int free (TYPE_1__*) ;

decNumber *
decNumberNormalize (decNumber * res, const decNumber * rhs, decContext * set)
{
  decNumber *allocrhs = ((void*)0);
  uInt status = 0;
  Int residue = 0;
  Int dropped;






  do
    {
      if (decNumberIsNaN (rhs))
 {
   decNaNs (res, rhs, ((void*)0), &status);
   break;
 }


      decCopyFit (res, rhs, set, &residue, &status);
      decFinish (res, set, &residue, &status);
      decTrim (res, 1, &dropped);
    }
  while (0);

  if (allocrhs != ((void*)0))
    free (allocrhs);
  if (status != 0)
    decStatus (res, status, set);
  return res;
}
