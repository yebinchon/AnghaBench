
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bitmap_zero (unsigned long*,int) ;
 int find_first_bit (unsigned long const*,int) ;
 int find_next_bit (unsigned long const*,int,int) ;
 int set_bit (int,unsigned long*) ;
 scalar_t__ test_bit (int,unsigned long const*) ;

void bitmap_onto(unsigned long *dst, const unsigned long *orig,
   const unsigned long *relmap, int bits)
{
 int n, m;

 if (dst == orig)
  return;
 bitmap_zero(dst, bits);
 m = 0;
 for (n = find_first_bit(relmap, bits);
      n < bits;
      n = find_next_bit(relmap, bits, n + 1)) {

  if (test_bit(m, orig))
   set_bit(n, dst);
  m++;
 }
}
