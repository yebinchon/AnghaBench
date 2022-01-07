
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long const BITMAP_LAST_WORD_MASK (int) ;
 int BITS_PER_LONG ;
 scalar_t__ hweight_long (unsigned long const) ;

int __bitmap_weight(const unsigned long *bitmap, int bits)
{
 int k, w = 0, lim = bits/BITS_PER_LONG;

 for (k = 0; k < lim; k++)
  w += hweight_long(bitmap[k]);

 if (bits % BITS_PER_LONG)
  w += hweight_long(bitmap[k] & BITMAP_LAST_WORD_MASK(bits));

 return w;
}
