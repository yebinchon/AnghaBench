
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ low; scalar_t__ leader; char sign; long exponent; } ;
typedef unsigned long LITTLENUM_TYPE ;


 int F_PRECISION ;
 long LITTLENUM_NUMBER_OF_BITS ;
 scalar_t__ TC_LARGEST_EXPONENT_IS_NORMAL (int) ;
 int X_PRECISION ;
 int abort () ;
 int as_warn (char*) ;
 long bits_left_in_littlenum ;
 TYPE_1__ generic_floating_point_number ;
 scalar_t__ littlenum_pointer ;
 scalar_t__ littlenums_left ;
 int make_invalid_floating_point_number (unsigned long*) ;
 unsigned long* mask ;
 int memset (unsigned long*,char,int) ;
 int next_bits (int) ;
 int unget_bits (int) ;

int
gen_to_words (LITTLENUM_TYPE *words, int precision, long exponent_bits)
{
  int return_value = 0;

  long exponent_1;
  long exponent_2;
  long exponent_3;
  long exponent_4;
  int exponent_skippage;
  LITTLENUM_TYPE word1;
  LITTLENUM_TYPE *lp;
  LITTLENUM_TYPE *words_end;

  words_end = words + precision;







  if (generic_floating_point_number.low > generic_floating_point_number.leader)
    {

      if (generic_floating_point_number.sign == '+')
 words[0] = 0x0000;
      else
 words[0] = 0x8000;
      memset (&words[1], '\0',
       (words_end - words - 1) * sizeof (LITTLENUM_TYPE));
      return return_value;
    }


  if (generic_floating_point_number.sign == 0)
    {
      if (TC_LARGEST_EXPONENT_IS_NORMAL (precision))
 as_warn ("NaNs are not supported by this target\n");
      if (precision == F_PRECISION)
 {
   words[0] = 0x7fff;
   words[1] = 0xffff;
 }
      else if (precision == X_PRECISION)
 {
   abort ();


 }
      else
 {
   words[0] = 0x7fff;
   words[1] = 0xffff;
   words[2] = 0xffff;
   words[3] = 0xffff;
 }
      return return_value;
    }
  else if (generic_floating_point_number.sign == 'P')
    {
      if (TC_LARGEST_EXPONENT_IS_NORMAL (precision))
 as_warn ("Infinities are not supported by this target\n");


      if (precision == F_PRECISION)
 {
   words[0] = 0x7f80;
   words[1] = 0;
 }
      else if (precision == X_PRECISION)
 {
   abort ();


 }
      else
 {
   words[0] = 0x7ff0;
   words[1] = 0;
   words[2] = 0;
   words[3] = 0;
 }
      return return_value;
    }
  else if (generic_floating_point_number.sign == 'N')
    {
      if (TC_LARGEST_EXPONENT_IS_NORMAL (precision))
 as_warn ("Infinities are not supported by this target\n");


      if (precision == F_PRECISION)
 {
   words[0] = 0xff80;
   words[1] = 0x0;
 }
      else if (precision == X_PRECISION)
 {
   abort ();


 }
      else
 {
   words[0] = 0xfff0;
   words[1] = 0x0;
   words[2] = 0x0;
   words[3] = 0x0;
 }
      return return_value;
    }
  bits_left_in_littlenum = LITTLENUM_NUMBER_OF_BITS;
  littlenum_pointer = generic_floating_point_number.leader;
  littlenums_left = (1
       + generic_floating_point_number.leader
       - generic_floating_point_number.low);


  for (exponent_skippage = 0; !next_bits (1); ++exponent_skippage)
 ;;
  exponent_1 = (generic_floating_point_number.exponent
  + generic_floating_point_number.leader
  + 1
  - generic_floating_point_number.low);



  exponent_2 = exponent_1 * LITTLENUM_NUMBER_OF_BITS;


  exponent_3 = exponent_2 - exponent_skippage;


  exponent_4 = exponent_3 + ((1 << (exponent_bits - 1)) - 2);


  lp = words;


  word1 = ((generic_floating_point_number.sign == '+')
    ? 0
    : (1 << (LITTLENUM_NUMBER_OF_BITS - 1)));


  if (exponent_4 <= 0)
    {
      int prec_bits;
      int num_bits;

      unget_bits (1);
      num_bits = -exponent_4;
      prec_bits =
 LITTLENUM_NUMBER_OF_BITS * precision - (exponent_bits + 1 + num_bits);
      if (num_bits >= LITTLENUM_NUMBER_OF_BITS - exponent_bits)
 {

   num_bits -= (LITTLENUM_NUMBER_OF_BITS - 1) - exponent_bits;
   *lp++ = word1;
   if (num_bits + exponent_bits + 1
       > precision * LITTLENUM_NUMBER_OF_BITS)
     {

       make_invalid_floating_point_number (words);
       return return_value;
     }




   while (num_bits >= LITTLENUM_NUMBER_OF_BITS)
     {
       num_bits -= LITTLENUM_NUMBER_OF_BITS;
       *lp++ = 0;
     }
   if (num_bits)
     *lp++ = next_bits (LITTLENUM_NUMBER_OF_BITS - (num_bits));
 }
      else
 {
   if (precision == X_PRECISION && exponent_bits == 15)
     {
       *lp++ = word1;



       *lp++ = next_bits (LITTLENUM_NUMBER_OF_BITS - num_bits);
     }
   else
     {
       word1 |= next_bits ((LITTLENUM_NUMBER_OF_BITS - 1)
      - (exponent_bits + num_bits));
       *lp++ = word1;
     }
 }
      while (lp < words_end)
 *lp++ = next_bits (LITTLENUM_NUMBER_OF_BITS);


      if (next_bits (1))
 {
   --lp;
   if (prec_bits >= LITTLENUM_NUMBER_OF_BITS)
     {
       int n = 0;
       int tmp_bits;

       n = 0;
       tmp_bits = prec_bits;
       while (tmp_bits > LITTLENUM_NUMBER_OF_BITS)
  {
    if (lp[n] != (LITTLENUM_TYPE) - 1)
      break;
    --n;
    tmp_bits -= LITTLENUM_NUMBER_OF_BITS;
  }
       if (tmp_bits > LITTLENUM_NUMBER_OF_BITS
    || (lp[n] & mask[tmp_bits]) != mask[tmp_bits]
    || (prec_bits != (precision * LITTLENUM_NUMBER_OF_BITS
        - exponent_bits - 1)
        ))
  {
    unsigned long carry;

    for (carry = 1; carry && (lp >= words); lp--)
      {
        carry = *lp + carry;
        *lp = carry;
        carry >>= LITTLENUM_NUMBER_OF_BITS;
      }
  }
       else
  {



    lp = words;
    word1 = ((generic_floating_point_number.sign == '+')
      ? 0
      : (1 << (LITTLENUM_NUMBER_OF_BITS - 1)));
    word1 |= (1
       << ((LITTLENUM_NUMBER_OF_BITS - 1)
    - exponent_bits));
    *lp++ = word1;







    while (lp < words_end)
      *lp++ = 0;
  }
     }
   else
     *lp += 1;
 }

      return return_value;
    }
  else if ((unsigned long) exponent_4 > mask[exponent_bits]
    || (! TC_LARGEST_EXPONENT_IS_NORMAL (precision)
        && (unsigned long) exponent_4 == mask[exponent_bits]))
    {





      make_invalid_floating_point_number (words);
      return return_value;
    }
  else
    {
      word1 |= (exponent_4 << ((LITTLENUM_NUMBER_OF_BITS - 1) - exponent_bits))
 | next_bits ((LITTLENUM_NUMBER_OF_BITS - 1) - exponent_bits);
    }

  *lp++ = word1;



  if (exponent_bits == 15 && precision == X_PRECISION)
    {



      *lp++ = (1 << (LITTLENUM_NUMBER_OF_BITS - 1)
        | next_bits (LITTLENUM_NUMBER_OF_BITS - 1));
    }


  while (lp < words_end)
    *lp++ = next_bits (LITTLENUM_NUMBER_OF_BITS);

  if (next_bits (1))
    {
      unsigned long carry;
      for (carry = 1, lp--; carry; lp--)
 {
   carry = *lp + carry;
   *lp = carry;
   carry >>= LITTLENUM_NUMBER_OF_BITS;
   if (lp == words)
     break;
 }
      if (precision == X_PRECISION && exponent_bits == 15)
 {


   if (lp == words)
     {
       lp[1] |= 1 << (LITTLENUM_NUMBER_OF_BITS - 1);
     }
 }
      if ((word1 ^ *words) & (1 << (LITTLENUM_NUMBER_OF_BITS - 1)))
 {



   *words &= ~(1 << (LITTLENUM_NUMBER_OF_BITS - 1));
 }
    }
  return return_value;
}
