
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int valueT ;
typedef int LITTLENUM_TYPE ;


 int LITTLENUM_MASK ;
 scalar_t__ LITTLENUM_NUMBER_OF_BITS ;

__attribute__((used)) static inline int
output_big_sleb128 (char *p, LITTLENUM_TYPE *bignum, int size)
{
  char *orig = p;
  valueT val = 0;
  int loaded = 0;
  unsigned byte;


  while (size > 1
  && bignum[size - 1] == LITTLENUM_MASK
  && bignum[size - 2] > LITTLENUM_MASK / 2)
    size--;

  do
    {

      val |= (*bignum << loaded);
      loaded += LITTLENUM_NUMBER_OF_BITS;
      size--;
      bignum++;



      do
 {
   byte = val & 0x7f;
   loaded -= 7;
   val >>= 7;
   if (size > 0
       || val != ((byte & 0x40) == 0 ? 0 : ((valueT) 1 << loaded) - 1))
     byte |= 0x80;

   if (orig)
     *p = byte;
   p++;
 }
      while ((byte & 0x80) != 0 && loaded >= 7);
    }
  while (size > 0);


  if ((byte & 0x80) != 0)
    {

      if (val & (1 << (loaded - 1)))
 val |= ~0 << loaded;
      if (orig)
 *p = val & 0x7f;
      p++;
    }

  return p - orig;
}
