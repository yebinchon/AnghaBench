
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long const BITMAP_LAST_WORD_MASK (int) ;
 int BITS_PER_LONG ;

void __bitmap_complement(unsigned long *dst, const unsigned long *src, int bits)
{
 int k, lim = bits/BITS_PER_LONG;
 for (k = 0; k < lim; ++k)
  dst[k] = ~src[k];

 if (bits % BITS_PER_LONG)
  dst[k] = ~src[k] & BITMAP_LAST_WORD_MASK(bits);
}
