
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BITS_PER_LONG ;
 int BITS_TO_LONGS (int) ;
 int memset (unsigned long*,int ,int) ;

void __bitmap_shift_right(unsigned long *dst,
   const unsigned long *src, int shift, int bits)
{
 int k, lim = BITS_TO_LONGS(bits), left = bits % BITS_PER_LONG;
 int off = shift/BITS_PER_LONG, rem = shift % BITS_PER_LONG;
 unsigned long mask = (1UL << left) - 1;
 for (k = 0; off + k < lim; ++k) {
  unsigned long upper, lower;





  if (!rem || off + k + 1 >= lim)
   upper = 0;
  else {
   upper = src[off + k + 1];
   if (off + k + 1 == lim - 1 && left)
    upper &= mask;
  }
  lower = src[off + k];
  if (left && off + k == lim - 1)
   lower &= mask;
  dst[k] = upper << (BITS_PER_LONG - rem) | lower >> rem;
  if (left && k == lim - 1)
   dst[k] &= mask;
 }
 if (off)
  memset(&dst[lim - off], 0, off*sizeof(unsigned long));
}
