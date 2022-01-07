
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct floatformat {int totalsize; unsigned int sign_start; unsigned int exp_start; unsigned int exp_len; unsigned long exp_nan; unsigned int man_start; int exp_bias; int man_len; scalar_t__ intbit; int byteorder; } ;


 int FLOATFORMAT_CHAR_BIT ;
 scalar_t__ floatformat_intbit_no ;
 double frexp (double,int*) ;
 double ldexp (double,int) ;
 int memset (unsigned char*,int ,int) ;
 int put_field (unsigned char*,int ,int,unsigned int,unsigned int,unsigned long) ;

void
floatformat_from_double (const struct floatformat *fmt,
                         const double *from, void *to)
{
  double dfrom;
  int exponent;
  double mant;
  unsigned int mant_bits, mant_off;
  int mant_bits_left;
  unsigned char *uto = (unsigned char *) to;

  dfrom = *from;
  memset (uto, 0, fmt->totalsize / FLOATFORMAT_CHAR_BIT);


  if (dfrom < 0)
    {
      put_field (uto, fmt->byteorder, fmt->totalsize, fmt->sign_start, 1, 1);
      dfrom = -dfrom;
    }

  if (dfrom == 0)
    {

      return;
    }

  if (dfrom != dfrom)
    {

      put_field (uto, fmt->byteorder, fmt->totalsize, fmt->exp_start,
   fmt->exp_len, fmt->exp_nan);

      put_field (uto, fmt->byteorder, fmt->totalsize, fmt->man_start,
   32, 1);
      return;
    }

  if (dfrom + dfrom == dfrom)
    {


      put_field (uto, fmt->byteorder, fmt->totalsize, fmt->exp_start,
   fmt->exp_len, fmt->exp_nan);
      return;
    }

  mant = frexp (dfrom, &exponent);
  if (exponent + fmt->exp_bias - 1 > 0)
    put_field (uto, fmt->byteorder, fmt->totalsize, fmt->exp_start,
        fmt->exp_len, exponent + fmt->exp_bias - 1);
  else
    {


      put_field (uto, fmt->byteorder, fmt->totalsize, fmt->exp_start,
   fmt->exp_len, 0);
      mant = ldexp (mant, exponent + fmt->exp_bias - 1);
    }

  mant_bits_left = fmt->man_len;
  mant_off = fmt->man_start;
  while (mant_bits_left > 0)
    {
      unsigned long mant_long;
      mant_bits = mant_bits_left < 32 ? mant_bits_left : 32;

      mant *= 4294967296.0;
      mant_long = (unsigned long)mant;
      mant -= mant_long;



      if ((unsigned int) mant_bits_left == fmt->man_len
   && fmt->intbit == floatformat_intbit_no
   && exponent + fmt->exp_bias - 1 > 0)
 {
   mant_long &= 0x7fffffff;
   mant_bits -= 1;
 }
      else if (mant_bits < 32)
 {


   mant_long >>= 32 - mant_bits;
 }

      put_field (uto, fmt->byteorder, fmt->totalsize,
   mant_off, mant_bits, mant_long);
      mant_off += mant_bits;
      mant_bits_left -= mant_bits;
    }
}
