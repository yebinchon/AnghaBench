
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BITS_PER_LONG ;
 int BITS_TO_LONGS (int) ;



 int min (int,int) ;

__attribute__((used)) static int __reg_op(unsigned long *bitmap, int pos, int order, int reg_op)
{
 int nbits_reg;
 int index;
 int offset;
 int nlongs_reg;
 int nbitsinlong;
 unsigned long mask;
 int i;
 int ret = 0;





 nbits_reg = 1 << order;
 index = pos / BITS_PER_LONG;
 offset = pos - (index * BITS_PER_LONG);
 nlongs_reg = BITS_TO_LONGS(nbits_reg);
 nbitsinlong = min(nbits_reg, BITS_PER_LONG);





 mask = (1UL << (nbitsinlong - 1));
 mask += mask - 1;
 mask <<= offset;

 switch (reg_op) {
 case 129:
  for (i = 0; i < nlongs_reg; i++) {
   if (bitmap[index + i] & mask)
    goto done;
  }
  ret = 1;
  break;

 case 130:
  for (i = 0; i < nlongs_reg; i++)
   bitmap[index + i] |= mask;
  break;

 case 128:
  for (i = 0; i < nlongs_reg; i++)
   bitmap[index + i] &= ~mask;
  break;
 }
done:
 return ret;
}
