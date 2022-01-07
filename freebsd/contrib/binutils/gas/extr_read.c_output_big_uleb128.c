
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ valueT ;
typedef scalar_t__ LITTLENUM_TYPE ;


 int CHARS_PER_LITTLENUM ;

__attribute__((used)) static inline int
output_big_uleb128 (char *p, LITTLENUM_TYPE *bignum, int size)
{
  char *orig = p;
  valueT val = 0;
  int loaded = 0;
  unsigned byte;



  while (size > 0 && bignum[size - 1] == 0)
    size--;

  do
    {
      if (loaded < 7 && size > 0)
 {
   val |= (*bignum << loaded);
   loaded += 8 * CHARS_PER_LITTLENUM;
   size--;
   bignum++;
 }

      byte = val & 0x7f;
      loaded -= 7;
      val >>= 7;

      if (size > 0 || val)
 byte |= 0x80;

      if (orig)
 *p = byte;
      p++;
    }
  while (byte & 0x80);

  return p - orig;
}
