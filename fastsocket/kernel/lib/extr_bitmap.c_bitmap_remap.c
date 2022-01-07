
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bitmap_ord_to_pos (unsigned long const*,int,int) ;
 int bitmap_pos_to_ord (unsigned long const*,int,int) ;
 int bitmap_weight (unsigned long const*,int) ;
 int bitmap_zero (unsigned long*,int) ;
 int find_first_bit (unsigned long const*,int) ;
 int find_next_bit (unsigned long const*,int,int) ;
 int set_bit (int,unsigned long*) ;

void bitmap_remap(unsigned long *dst, const unsigned long *src,
  const unsigned long *old, const unsigned long *new,
  int bits)
{
 int oldbit, w;

 if (dst == src)
  return;
 bitmap_zero(dst, bits);

 w = bitmap_weight(new, bits);
 for (oldbit = find_first_bit(src, bits);
      oldbit < bits;
      oldbit = find_next_bit(src, bits, oldbit + 1)) {
       int n = bitmap_pos_to_ord(old, oldbit, bits);
  if (n < 0 || w == 0)
   set_bit(oldbit, dst);
  else
   set_bit(bitmap_ord_to_pos(new, n % w, bits), dst);
 }
}
