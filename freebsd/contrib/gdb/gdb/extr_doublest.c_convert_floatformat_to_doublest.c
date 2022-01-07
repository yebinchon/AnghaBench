
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct floatformat {int totalsize; unsigned int exp_start; int exp_len; int man_len; unsigned int man_start; long exp_nan; long exp_bias; scalar_t__ intbit; unsigned int sign_start; int byteorder; } ;
typedef double DOUBLEST ;


 int FLOATFORMAT_CHAR_BIT ;
 scalar_t__ floatformat_intbit_no ;
 int floatformat_littlebyte_bigword ;
 long get_field (unsigned char*,int ,int,unsigned int,int) ;
 double ldexp (double,long) ;
 unsigned int min (int,int) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static void
convert_floatformat_to_doublest (const struct floatformat *fmt,
     const void *from,
     DOUBLEST *to)
{
  unsigned char *ufrom = (unsigned char *) from;
  DOUBLEST dto;
  long exponent;
  unsigned long mant;
  unsigned int mant_bits, mant_off;
  int mant_bits_left;
  int special_exponent;
  if (fmt->byteorder == floatformat_littlebyte_bigword)
    {
      static unsigned char *newfrom;
      unsigned char *swapin, *swapout;
      int longswaps;

      longswaps = fmt->totalsize / FLOATFORMAT_CHAR_BIT;
      longswaps >>= 3;

      if (newfrom == ((void*)0))
 {
   newfrom = (unsigned char *) xmalloc (fmt->totalsize);
 }
      swapout = newfrom;
      swapin = ufrom;
      ufrom = newfrom;
      while (longswaps-- > 0)
 {

   *swapout++ = swapin[4];
   *swapout++ = swapin[5];
   *swapout++ = swapin[6];
   *swapout++ = swapin[7];
   *swapout++ = swapin[0];
   *swapout++ = swapin[1];
   *swapout++ = swapin[2];
   *swapout++ = swapin[3];
   swapin += 8;
 }
    }

  exponent = get_field (ufrom, fmt->byteorder, fmt->totalsize,
   fmt->exp_start, fmt->exp_len);




  mant_bits_left = fmt->man_len;
  mant_off = fmt->man_start;
  dto = 0.0;

  special_exponent = exponent == 0 || exponent == fmt->exp_nan;





  if (!special_exponent)
    exponent -= fmt->exp_bias;
  else if (exponent == 0)
    exponent = 1 - fmt->exp_bias;







  if (!special_exponent)
    {
      if (fmt->intbit == floatformat_intbit_no)
 dto = ldexp (1.0, exponent);
      else
 exponent++;
    }

  while (mant_bits_left > 0)
    {
      mant_bits = min (mant_bits_left, 32);

      mant = get_field (ufrom, fmt->byteorder, fmt->totalsize,
   mant_off, mant_bits);

      dto += ldexp ((double) mant, exponent - mant_bits);
      exponent -= mant_bits;
      mant_off += mant_bits;
      mant_bits_left -= mant_bits;
    }


  if (get_field (ufrom, fmt->byteorder, fmt->totalsize, fmt->sign_start, 1))
    dto = -dto;
  *to = dto;
}
