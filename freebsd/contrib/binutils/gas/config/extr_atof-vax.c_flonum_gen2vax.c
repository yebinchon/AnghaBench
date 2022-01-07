
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ low; scalar_t__ leader; char sign; long exponent; } ;
typedef unsigned long LITTLENUM_TYPE ;
typedef TYPE_1__ FLONUM_TYPE ;


 long LITTLENUM_NUMBER_OF_BITS ;
 long bits_left_in_littlenum ;
 scalar_t__ littlenum_end ;
 scalar_t__ littlenum_pointer ;
 int make_invalid_floating_point_number (unsigned long*) ;
 long* mask ;
 int memset (unsigned long*,char,int) ;
 int next_bits (int) ;
 int what_kind_of_float (int,int*,long*) ;

int
flonum_gen2vax (int format_letter,
  FLONUM_TYPE *f,
  LITTLENUM_TYPE *words)
{
  LITTLENUM_TYPE *lp;
  int precision;
  long exponent_bits;
  int return_value;

  return_value = what_kind_of_float (format_letter, &precision, &exponent_bits);

  if (return_value != 0)
    make_invalid_floating_point_number (words);

  else
    {
      if (f->low > f->leader)

 memset (words, '\0', sizeof (LITTLENUM_TYPE) * precision);

      else
 {
   long exponent_1;
   long exponent_2;
   long exponent_3;
   long exponent_4;
   int exponent_skippage;
   LITTLENUM_TYPE word1;


   if (f->sign != '-' && f->sign != '+')
     {
       make_invalid_floating_point_number (words);
       return return_value;
     }
   bits_left_in_littlenum = LITTLENUM_NUMBER_OF_BITS;
   littlenum_pointer = f->leader;
   littlenum_end = f->low;

   for (exponent_skippage = 0;
        !next_bits (1);
        exponent_skippage++);;

   exponent_1 = f->exponent + f->leader + 1 - f->low;

   exponent_2 = exponent_1 * LITTLENUM_NUMBER_OF_BITS;

   exponent_3 = exponent_2 - exponent_skippage;

   exponent_4 = exponent_3 + (1 << (exponent_bits - 1));


   if (exponent_4 & ~mask[exponent_bits])
     {

       make_invalid_floating_point_number (words);




     }
   else
     {
       lp = words;



       word1 = (((exponent_4 & mask[exponent_bits]) << (15 - exponent_bits))
         | ((f->sign == '+') ? 0 : 0x8000)
         | next_bits (15 - exponent_bits));
       *lp++ = word1;


       for (; lp < words + precision; lp++)
  *lp = next_bits (LITTLENUM_NUMBER_OF_BITS);

       if (next_bits (1))
  {






    unsigned long carry;
    for (carry = 1, lp--;
         carry && (lp >= words);
         lp--)
      {
        carry = *lp + carry;
        *lp = carry;
        carry >>= LITTLENUM_NUMBER_OF_BITS;
      }

    if ((word1 ^ *words) & (1 << (LITTLENUM_NUMBER_OF_BITS - 1)))
      {
        make_invalid_floating_point_number (words);



      }
  }
     }
 }
    }
  return return_value;
}
