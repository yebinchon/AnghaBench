
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uInt ;
struct TYPE_8__ {int bits; scalar_t__ exponent; } ;
typedef TYPE_1__ decNumber ;


 int DECNAN ;
 int DECSNAN ;
 int DEC_Invalid_operation ;
 int DEC_sNaN ;
 int decNumberCopy (TYPE_1__*,TYPE_1__ const*) ;

__attribute__((used)) static decNumber *
decNaNs (decNumber * res, const decNumber * lhs, const decNumber * rhs, uInt * status)
{


  if (lhs->bits & DECSNAN)
    *status |= DEC_Invalid_operation | DEC_sNaN;
  else if (rhs == ((void*)0));
  else if (rhs->bits & DECSNAN)
    {
      lhs = rhs;
      *status |= DEC_Invalid_operation | DEC_sNaN;
    }
  else if (lhs->bits & DECNAN);
  else
    lhs = rhs;

  decNumberCopy (res, lhs);
  res->bits &= ~DECSNAN;
  res->bits |= DECNAN;
  res->exponent = 0;

  return res;
}
