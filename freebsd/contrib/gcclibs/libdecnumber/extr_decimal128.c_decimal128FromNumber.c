
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
typedef TYPE_1__ decimal128 ;
struct TYPE_19__ {int bits; scalar_t__ exponent; int digits; scalar_t__* lsu; } ;
typedef TYPE_2__ decNumber ;
struct TYPE_20__ {int status; int round; } ;
typedef TYPE_3__ decContext ;
typedef scalar_t__ Int ;


 scalar_t__ DECIMAL128_Bias ;
 int DECIMAL128_Ehigh ;
 scalar_t__ DECIMAL128_Emax ;
 scalar_t__ DECIMAL128_Emin ;
 int DECIMAL128_Pmax ;
 void* DECIMAL_Inf ;
 void* DECIMAL_NaN ;
 void* DECIMAL_sNaN ;
 int DECINF ;
 int DECNAN ;
 int DECNEG ;
 int DECSPECIAL ;
 int DEC_Clamped ;
 int DEC_INIT_DECIMAL128 ;
 int DEC_clear (TYPE_1__*) ;
 int decContextDefault (TYPE_3__*,int ) ;
 int decContextSetStatus (TYPE_3__*,int) ;
 int decDensePackCoeff (TYPE_2__ const*,int*,int,scalar_t__) ;
 scalar_t__ decNumberIsZero (TYPE_2__ const*) ;
 int decNumberPlus (TYPE_2__*,TYPE_2__ const*,TYPE_3__*) ;
 int decimal128SetExpCon (TYPE_1__*,int) ;
 int decimal128SetSign (TYPE_1__*,int) ;

decimal128 *
decimal128FromNumber (decimal128 * d128, const decNumber * dn, decContext * set)
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
      if (dn->digits > DECIMAL128_Pmax
   || ae > DECIMAL128_Emax
   || ae < DECIMAL128_Emin)
 {
   decContextDefault (&dc, DEC_INIT_DECIMAL128);
   dc.round = set->round;
   decNumberPlus (&dw, dn, &dc);

   status |= dc.status;
   dn = &dw;
 }


    }

  DEC_clear (d128);
  if (dn->bits & DECSPECIAL)
    {
      uByte top;
      if (dn->bits & DECINF)
 top = DECIMAL_Inf;
      else
 {
   if ((*dn->lsu != 0 || dn->digits > 1)
       && (dn->digits < DECIMAL128_Pmax))
     {
       decDensePackCoeff (dn, d128->bytes, sizeof (d128->bytes), 0);
     }
   if (dn->bits & DECNAN)
     top = DECIMAL_NaN;
   else
     top = DECIMAL_sNaN;
 }
      d128->bytes[0] = top;
    }
  else if (decNumberIsZero (dn))
    {

      if (dn->exponent < -DECIMAL128_Bias)
 {
   exp = 0;
   status |= DEC_Clamped;
 }
      else
 {
   exp = dn->exponent + DECIMAL128_Bias;
   if (exp > DECIMAL128_Ehigh)
     {
       exp = DECIMAL128_Ehigh;
       status |= DEC_Clamped;
     }
 }
      comb = (exp >> 9) & 0x18;
      d128->bytes[0] = (uByte) (comb << 2);
      exp &= 0xfff;
      decimal128SetExpCon (d128, exp);
    }
  else
    {
      uInt msd;


      exp = (uInt) (dn->exponent + DECIMAL128_Bias);

      if (exp > DECIMAL128_Ehigh)
 {
   pad = exp - DECIMAL128_Ehigh;
   exp = DECIMAL128_Ehigh;
   status |= DEC_Clamped;
 }

      decDensePackCoeff (dn, d128->bytes, sizeof (d128->bytes), pad);


      msd = ((unsigned) d128->bytes[1] << 2) & 0x0c;
      msd |= ((unsigned) d128->bytes[2] >> 6);
      d128->bytes[1] &= 0xfc;
      d128->bytes[2] &= 0x3f;


      if (msd >= 8)
 comb = 0x18 | (msd & 0x01) | ((exp >> 11) & 0x06);
      else
 comb = (msd & 0x07) | ((exp >> 9) & 0x18);
      d128->bytes[0] = (uByte) (comb << 2);
      exp &= 0xfff;
      decimal128SetExpCon (d128, exp);
    }

  if (isneg)
    decimal128SetSign (d128, 1);
  if (status != 0)
    decContextSetStatus (set, status);


  return d128;
}
