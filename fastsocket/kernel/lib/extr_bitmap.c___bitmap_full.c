
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long const BITMAP_LAST_WORD_MASK (int) ;
 int BITS_PER_LONG ;

int __bitmap_full(const unsigned long *bitmap, int bits)
{
 int k, lim = bits/BITS_PER_LONG;
 for (k = 0; k < lim; ++k)
  if (~bitmap[k])
   return 0;

 if (bits % BITS_PER_LONG)
  if (~bitmap[k] & BITMAP_LAST_WORD_MASK(bits))
   return 0;

 return 1;
}
