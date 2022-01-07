
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BITS_PER_LONG ;
 int BITS_TO_LONGS (int) ;
 int memset (unsigned long*,int ,int) ;

void __bitmap_shift_left(unsigned long *dst,
   const unsigned long *src, int shift, int bits)
{
 int k, lim = BITS_TO_LONGS(bits), left = bits % BITS_PER_LONG;
 int off = shift/BITS_PER_LONG, rem = shift % BITS_PER_LONG;
 for (k = lim - off - 1; k >= 0; --k) {
  unsigned long upper, lower;





  if (rem && k > 0)
   lower = src[k - 1];
  else
   lower = 0;
  upper = src[k];
  if (left && k == lim - 1)
   upper &= (1UL << left) - 1;
  dst[k + off] = lower >> (BITS_PER_LONG - rem) | upper << rem;
  if (left && k + off == lim - 1)
   dst[k + off] &= (1UL << left) - 1;
 }
 if (off)
  memset(dst, 0, off*sizeof(unsigned long));
}
