
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct floatformat {unsigned int exp_start; int exp_len; unsigned long exp_nan; unsigned int man_start; int man_len; unsigned int sign_start; long exp_bias; scalar_t__ intbit; int totalsize; int byteorder; } ;


 double INFINITY ;
 double NAN ;
 scalar_t__ floatformat_intbit_no ;
 long get_field (unsigned char const*,int ,int ,unsigned int,int) ;
 double ldexp (double,long) ;
 unsigned int min (int,int) ;

void
floatformat_to_double (const struct floatformat *fmt,
                       const void *from, double *to)
{
  const unsigned char *ufrom = (const unsigned char *) from;
  double dto;
  long exponent;
  unsigned long mant;
  unsigned int mant_bits, mant_off;
  int mant_bits_left;
  int special_exponent;

  exponent = get_field (ufrom, fmt->byteorder, fmt->totalsize,
   fmt->exp_start, fmt->exp_len);




  if ((unsigned long) exponent == fmt->exp_nan)
    {
      int nan;

      mant_off = fmt->man_start;
      mant_bits_left = fmt->man_len;
      nan = 0;
      while (mant_bits_left > 0)
 {
   mant_bits = min (mant_bits_left, 32);

   if (get_field (ufrom, fmt->byteorder, fmt->totalsize,
    mant_off, mant_bits) != 0)
     {

       nan = 1;
       break;
     }

   mant_off += mant_bits;
   mant_bits_left -= mant_bits;
 }
      if (nan)
 dto = NAN;
      else
 dto = INFINITY;

      if (get_field (ufrom, fmt->byteorder, fmt->totalsize, fmt->sign_start, 1))
 dto = -dto;

      *to = dto;

      return;
    }

  mant_bits_left = fmt->man_len;
  mant_off = fmt->man_start;
  dto = 0.0;

  special_exponent = exponent == 0 || (unsigned long) exponent == fmt->exp_nan;


  if (!special_exponent)
    exponent -= fmt->exp_bias;







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



      if (special_exponent && exponent == 0 && mant != 0)
 dto += ldexp ((double)mant,
        (- fmt->exp_bias
         - mant_bits
         - (mant_off - fmt->man_start)
         + 1));
      else
 dto += ldexp ((double)mant, exponent - mant_bits);
      if (exponent != 0)
 exponent -= mant_bits;
      mant_off += mant_bits;
      mant_bits_left -= mant_bits;
    }


  if (get_field (ufrom, fmt->byteorder, fmt->totalsize, fmt->sign_start, 1))
    dto = -dto;
  *to = dto;
}
