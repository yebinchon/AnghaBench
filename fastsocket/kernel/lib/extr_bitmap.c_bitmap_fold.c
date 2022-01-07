
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bitmap_zero (unsigned long*,int) ;
 int find_first_bit (unsigned long const*,int) ;
 int find_next_bit (unsigned long const*,int,int) ;
 int set_bit (int,unsigned long*) ;

void bitmap_fold(unsigned long *dst, const unsigned long *orig,
   int sz, int bits)
{
 int oldbit;

 if (dst == orig)
  return;
 bitmap_zero(dst, bits);

 for (oldbit = find_first_bit(orig, bits);
      oldbit < bits;
      oldbit = find_next_bit(orig, bits, oldbit + 1))
  set_bit(oldbit % sz, dst);
}
