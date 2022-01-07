
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long BITMAP_FIRST_WORD_MASK (int) ;
 unsigned long BITMAP_LAST_WORD_MASK (int const) ;
 int BITS_PER_LONG ;
 int BIT_WORD (int) ;

void bitmap_set(unsigned long *map, int start, int nr)
{
 unsigned long *p = map + BIT_WORD(start);
 const int size = start + nr;
 int bits_to_set = BITS_PER_LONG - (start % BITS_PER_LONG);
 unsigned long mask_to_set = BITMAP_FIRST_WORD_MASK(start);

 while (nr - bits_to_set >= 0) {
  *p |= mask_to_set;
  nr -= bits_to_set;
  bits_to_set = BITS_PER_LONG;
  mask_to_set = ~0UL;
  p++;
 }
 if (nr) {
  mask_to_set &= BITMAP_LAST_WORD_MASK(size);
  *p |= mask_to_set;
 }
}
