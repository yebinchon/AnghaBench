
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bitmap_ord_to_pos (unsigned long const*,int,int) ;
 int bitmap_pos_to_ord (unsigned long const*,int,int) ;
 int bitmap_weight (unsigned long const*,int) ;

int bitmap_bitremap(int oldbit, const unsigned long *old,
    const unsigned long *new, int bits)
{
 int w = bitmap_weight(new, bits);
 int n = bitmap_pos_to_ord(old, oldbit, bits);
 if (n < 0 || w == 0)
  return oldbit;
 else
  return bitmap_ord_to_pos(new, n % w, bits);
}
