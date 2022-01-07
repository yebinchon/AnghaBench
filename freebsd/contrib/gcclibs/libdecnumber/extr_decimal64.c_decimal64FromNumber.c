
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int uInt ;
typedef void* uByte ;
struct TYPE_18__ {int* bytes; } ;
typedef TYPE_1__ decimal64 ;
struct TYPE_19__ {int bits; scalar_t__ exponent; int digits; scalar_t__* lsu; } ;
typedef TYPE_2__ decNumber ;
struct TYPE_20__ {int status; int round; } ;
typedef TYPE_3__ decContext ;
typedef scalar_t__ Int ;


 scalar_t__ DECIMAL64_Bias ;
 int DECIMAL64_Ehigh ;
 scalar_t__ DECIMAL64_Emax ;
 scalar_t__ DECIMAL64_Emin ;
 int DECIMAL64_Pmax ;
 void* DECIMAL_Inf ;
 void* DECIMAL_NaN ;
 void* DECIMAL_sNaN ;
 int DECINF ;
 int DECNAN ;
 int DECNEG ;
 int DECSPECIAL ;
 int DEC_Clamped ;
 int DEC_INIT_DECIMAL64 ;
 int DEC_clear (TYPE_1__*) ;
 int decContextDefault (TYPE_3__*,int ) ;
 int decContextSetStatus (TYPE_3__*,int) ;
 int decDensePackCoeff (TYPE_2__ const*,int*,int,scalar_t__) ;
 scalar_t__ decNumberIsZero (TYPE_2__ const*) ;
 int decNumberPlus (TYPE_2__*,TYPE_2__ const*,TYPE_3__*) ;
 int decimal64SetExpCon (TYPE_1__*,int) ;
 int decimal64SetSign (TYPE_1__*,int) ;

decimal64 *
decimal64FromNumber (decimal64 * d64, const decNumber * dn, decContext * set)
{
  uInt status = 0;
  Int pad = 0;
  decNumber dw;
  decContext dc;
  uByte isneg = dn->bits & DECNEG;
  uInt comb, exp;




  if (!(dn->bits & DECSPECIAL))
    {
      Int ae = dn->exponent + dn->digits - 1;
      if (dn->digits > DECIMAL64_Pmax
   || ae > DECIMAL64_Emax
   || ae < DECIMAL64_Emin)
 {
   decContextDefault (&dc, DEC_INIT_DECIMAL64);
   dc.round = set->round;
   decNumberPlus (&dw, dn, &dc);

   status |= dc.status;
   dn = &dw;
 }


    }

  DEC_clear (d64);
  if (dn->bits & DECSPECIAL)
    {
      uByte top;
      if (dn->bits & DECINF)
 top = DECIMAL_Inf;
      else
 {
   if ((*dn->lsu != 0 || dn->digits > 1)
       && (dn->digits < DECIMAL64_Pmax))
     {
       decDensePackCoeff (dn, d64->bytes, sizeof (d64->bytes), 0);
     }
   if (dn->bits & DECNAN)
     top = DECIMAL_NaN;
   else
     top = DECIMAL_sNaN;
 }
      d64->bytes[0] = top;
    }
  else if (decNumberIsZero (dn))
    {

      if (dn->exponent < -DECIMAL64_Bias)
 {
   exp = 0;
   status |= DEC_Clamped;
 }
      else
 {
   exp = dn->exponent + DECIMAL64_Bias;
   if (exp > DECIMAL64_Ehigh)
     {
       exp = DECIMAL64_Ehigh;
       status |= DEC_Clamped;
     }
 }
      comb = (exp >> 5) & 0x18;
      d64->bytes[0] = (uByte) (comb << 2);
      exp &= 0xff;
      decimal64SetExpCon (d64, exp);
    }
  else
    {
      uInt msd;


      exp = (uInt) (dn->exponent + DECIMAL64_Bias);
      if (exp > DECIMAL64_Ehigh)
 {
   pad = exp - DECIMAL64_Ehigh;
   exp = DECIMAL64_Ehigh;
   status |= DEC_Clamped;
 }

      decDensePackCoeff (dn, d64->bytes, sizeof (d64->bytes), pad);


      msd = ((unsigned) d64->bytes[1] >> 2) & 0x0f;
      d64->bytes[1] &= 0x03;

      if (msd >= 8)
 comb = 0x18 | (msd & 0x01) | ((exp >> 7) & 0x06);
      else
 comb = (msd & 0x07) | ((exp >> 5) & 0x18);
      d64->bytes[0] = (uByte) (comb << 2);
      exp &= 0xff;
      decimal64SetExpCon (d64, exp);
    }

  if (isneg)
    decimal64SetSign (d64, 1);
  if (status != 0)
    decContextSetStatus (set, status);


  return d64;
}
