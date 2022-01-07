
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
typedef TYPE_1__ decimal32 ;
struct TYPE_19__ {int bits; scalar_t__ exponent; int digits; scalar_t__* lsu; } ;
typedef TYPE_2__ decNumber ;
struct TYPE_20__ {int status; int round; } ;
typedef TYPE_3__ decContext ;
typedef scalar_t__ Int ;


 scalar_t__ DECIMAL32_Bias ;
 int DECIMAL32_Ehigh ;
 scalar_t__ DECIMAL32_Emax ;
 scalar_t__ DECIMAL32_Emin ;
 int DECIMAL32_Pmax ;
 void* DECIMAL_Inf ;
 void* DECIMAL_NaN ;
 void* DECIMAL_sNaN ;
 int DECINF ;
 int DECNAN ;
 int DECNEG ;
 int DECSPECIAL ;
 int DEC_Clamped ;
 int DEC_INIT_DECIMAL32 ;
 int DEC_clear (TYPE_1__*) ;
 int decContextDefault (TYPE_3__*,int ) ;
 int decContextSetStatus (TYPE_3__*,int) ;
 int decDensePackCoeff (TYPE_2__ const*,int*,int,scalar_t__) ;
 scalar_t__ decNumberIsZero (TYPE_2__ const*) ;
 int decNumberPlus (TYPE_2__*,TYPE_2__ const*,TYPE_3__*) ;
 int decimal32SetExpCon (TYPE_1__*,int) ;
 int decimal32SetSign (TYPE_1__*,int) ;

decimal32 *
decimal32FromNumber (decimal32 * d32, const decNumber * dn, decContext * set)
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
      if (dn->digits > DECIMAL32_Pmax
   || ae > DECIMAL32_Emax
   || ae < DECIMAL32_Emin)
 {
   decContextDefault (&dc, DEC_INIT_DECIMAL32);
   dc.round = set->round;
   decNumberPlus (&dw, dn, &dc);

   status |= dc.status;
   dn = &dw;
 }


    }

  DEC_clear (d32);
  if (dn->bits & DECSPECIAL)
    {
      uByte top;
      if (dn->bits & DECINF)
 top = DECIMAL_Inf;
      else
 {
   if ((*dn->lsu != 0 || dn->digits > 1)
       && (dn->digits < DECIMAL32_Pmax))
     {
       decDensePackCoeff (dn, d32->bytes, sizeof (d32->bytes), 0);
     }
   if (dn->bits & DECNAN)
     top = DECIMAL_NaN;
   else
     top = DECIMAL_sNaN;
 }
      d32->bytes[0] = top;
    }
  else if (decNumberIsZero (dn))
    {

      if (dn->exponent < -DECIMAL32_Bias)
 {
   exp = 0;
   status |= DEC_Clamped;
 }
      else
 {
   exp = dn->exponent + DECIMAL32_Bias;
   if (exp > DECIMAL32_Ehigh)
     {
       exp = DECIMAL32_Ehigh;
       status |= DEC_Clamped;
     }
 }
      comb = (exp >> 3) & 0x18;
      d32->bytes[0] = (uByte) (comb << 2);
      exp &= 0x3f;
      decimal32SetExpCon (d32, exp);
    }
  else
    {
      uInt msd;


      exp = (uInt) (dn->exponent + DECIMAL32_Bias);

      if (exp > DECIMAL32_Ehigh)
 {
   pad = exp - DECIMAL32_Ehigh;
   exp = DECIMAL32_Ehigh;
   status |= DEC_Clamped;
 }

      decDensePackCoeff (dn, d32->bytes, sizeof (d32->bytes), pad);


      msd = ((unsigned) d32->bytes[1] >> 4);
      d32->bytes[1] &= 0x0f;

      if (msd >= 8)
 comb = 0x18 | (msd & 0x01) | ((exp >> 5) & 0x06);
      else
 comb = (msd & 0x07) | ((exp >> 3) & 0x18);
      d32->bytes[0] = (uByte) (comb << 2);
      exp &= 0x3f;
      decimal32SetExpCon (d32, exp);
    }

  if (isneg)
    decimal32SetSign (d32, 1);
  if (status != 0)
    decContextSetStatus (set, status);


  return d32;
}
