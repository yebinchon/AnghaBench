
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uInt ;
struct TYPE_10__ {int* bytes; } ;
typedef TYPE_1__ decimal128 ;
struct TYPE_11__ {int bits; scalar_t__ exponent; } ;
typedef TYPE_2__ decNumber ;
typedef int Int ;


 scalar_t__ DECIMAL128_Bias ;
 int DECIMAL128_Pmax ;
 int DECIMAL_Inf ;
 int DECIMAL_NaN ;
 int DECINF ;
 int DECNAN ;
 int DECNEG ;
 int DECSNAN ;
 int decDenseUnpackCoeff (int*,int,TYPE_2__*,int,int) ;
 int decNumberZero (TYPE_2__*) ;
 scalar_t__ decimal128ExpCon (TYPE_1__ const*) ;
 scalar_t__ decimal128Sign (TYPE_1__ const*) ;

decNumber *
decimal128ToNumber (const decimal128 * d128, decNumber * dn)
{
  uInt msd;
  decimal128 wk;
  uInt top = d128->bytes[0] & 0x7f;
  decNumberZero (dn);

  if (decimal128Sign (d128))
    dn->bits = DECNEG;

  if (top >= 0x78)
    {
      if ((top & 0x7c) == (DECIMAL_Inf & 0x7c))
 dn->bits |= DECINF;
      else if ((top & 0x7e) == (DECIMAL_NaN & 0x7e))
 dn->bits |= DECNAN;
      else
 dn->bits |= DECSNAN;
      msd = 0;
    }
  else
    {
      uInt comb = top >> 2;
      uInt exp;

      if (comb >= 0x18)
 {
   msd = 8 + (comb & 0x01);
   exp = (comb & 0x06) << 11;
 }
      else
 {
   msd = comb & 0x07;
   exp = (comb & 0x18) << 9;
 }
      dn->exponent = exp + decimal128ExpCon (d128) - DECIMAL128_Bias;
    }


  if (!(dn->bits & DECINF))
    {
      Int bunches = DECIMAL128_Pmax / 3;
      Int odd = 0;
      if (msd != 0)
 {


   wk = *d128;
   wk.bytes[0] = 0;
   wk.bytes[1] = 0;
   wk.bytes[2] &= 0x3f;
   wk.bytes[1] |= (msd >> 2);
   wk.bytes[2] |= (msd << 6);
   odd++;
   d128 = &wk;
 }
      decDenseUnpackCoeff (d128->bytes, sizeof (d128->bytes), dn, bunches,
      odd);
    }


  return dn;
}
