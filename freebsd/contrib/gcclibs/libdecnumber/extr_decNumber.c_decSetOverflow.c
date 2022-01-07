
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uInt ;
typedef int uByte ;
struct TYPE_7__ {int bits; int exponent; int digits; scalar_t__* lsu; } ;
typedef TYPE_1__ decNumber ;
struct TYPE_8__ {int emax; int digits; int round; scalar_t__ clamp; } ;
typedef TYPE_2__ decContext ;
typedef scalar_t__ Unit ;
typedef int Int ;
typedef int Flag ;


 int DECDPUN ;
 scalar_t__ DECDPUNMAX ;
 int DECINF ;
 int DECNEG ;
 int DEC_Clamped ;
 int DEC_Inexact ;
 int DEC_Overflow ;



 int DEC_Rounded ;
 scalar_t__ ISZERO (TYPE_1__*) ;
 int decNumberZero (TYPE_1__*) ;
 int* powers ;

__attribute__((used)) static void
decSetOverflow (decNumber * dn, decContext * set, uInt * status)
{
  Flag needmax = 0;
  uByte sign = dn->bits & DECNEG;

  if (ISZERO (dn))
    {
      Int emax = set->emax;
      if (set->clamp)
 emax -= set->digits - 1;
      if (dn->exponent > emax)
 {
   dn->exponent = emax;
   *status |= DEC_Clamped;
 }
      return;
    }

  decNumberZero (dn);
  switch (set->round)
    {
    case 129:
      {
 needmax = 1;
 break;
      }
    case 130:
      {
 if (sign)
   needmax = 1;
 break;
      }
    case 128:
      {
 if (!sign)
   needmax = 1;
 break;
      }
    default:
      break;
    }
  if (needmax)
    {
      Unit *up;
      Int count = set->digits;
      dn->digits = count;

      for (up = dn->lsu;; up++)
 {
   if (count > DECDPUN)
     *up = DECDPUNMAX;
   else
     {
       *up = (Unit) (powers[count] - 1);
       break;
     }
   count -= DECDPUN;
 }
      dn->bits = sign;
      dn->exponent = set->emax - set->digits + 1;
    }
  else
    dn->bits = sign | DECINF;
  *status |= DEC_Overflow | DEC_Inexact | DEC_Rounded;
}
