
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __clear_bit (int,unsigned long*) ;

__attribute__((used)) static void
reset_union_bmap_deny(unsigned long deny, unsigned long *bmap)
{
 int i;
 for (i = 0; i < 4; i++) {
  if ((i & deny) != i)
   __clear_bit(i, bmap);
 }
}
