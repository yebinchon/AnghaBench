
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long BITMAP_FIRST_WORD_MASK (int) ;
 unsigned long BITMAP_LAST_WORD_MASK (int const) ;
 int BITS_PER_LONG ;
 int BIT_WORD (int) ;

void bitmap_clear(unsigned long *map, int start, int nr)
{
 unsigned long *p = map + BIT_WORD(start);
 const int size = start + nr;
 int bits_to_clear = BITS_PER_LONG - (start % BITS_PER_LONG);
 unsigned long mask_to_clear = BITMAP_FIRST_WORD_MASK(start);

 while (nr - bits_to_clear >= 0) {
  *p &= ~mask_to_clear;
  nr -= bits_to_clear;
  bits_to_clear = BITS_PER_LONG;
  mask_to_clear = ~0UL;
  p++;
 }
 if (nr) {
  mask_to_clear &= BITMAP_LAST_WORD_MASK(size);
  *p &= ~mask_to_clear;
 }
}
