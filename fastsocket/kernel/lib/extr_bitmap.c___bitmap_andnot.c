
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BITS_TO_LONGS (int) ;

int __bitmap_andnot(unsigned long *dst, const unsigned long *bitmap1,
    const unsigned long *bitmap2, int bits)
{
 int k;
 int nr = BITS_TO_LONGS(bits);
 unsigned long result = 0;

 for (k = 0; k < nr; k++)
  result |= (dst[k] = bitmap1[k] & ~bitmap2[k]);
 return result != 0;
}
