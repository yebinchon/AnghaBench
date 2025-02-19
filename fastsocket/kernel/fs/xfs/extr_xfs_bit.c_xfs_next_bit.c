
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int BIT_TO_WORD_SHIFT ;
 int NBWORD ;
 int ffs (int) ;

int xfs_next_bit(uint *map, uint size, uint start_bit)
{
 uint * p = ((unsigned int *) map) + (start_bit >> BIT_TO_WORD_SHIFT);
 uint result = start_bit & ~(NBWORD - 1);
 uint tmp;

 size <<= BIT_TO_WORD_SHIFT;

 if (start_bit >= size)
  return -1;
 size -= result;
 start_bit &= (NBWORD - 1);
 if (start_bit) {
  tmp = *p++;

  tmp &= (~0U << start_bit);
  if (tmp != 0U)
   goto found;
  result += NBWORD;
  size -= NBWORD;
 }
 while (size) {
  if ((tmp = *p++) != 0U)
   goto found;
  result += NBWORD;
  size -= NBWORD;
 }
 return -1;
found:
 return result + ffs(tmp) - 1;
}
