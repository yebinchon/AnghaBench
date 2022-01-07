
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long BITS_PER_LONG ;
 unsigned long __fls (unsigned long) ;

unsigned long find_last_bit(const unsigned long *addr, unsigned long size)
{
 unsigned long words;
 unsigned long tmp;


 words = size / BITS_PER_LONG;


 if (size & (BITS_PER_LONG-1)) {
  tmp = (addr[words] & (~0UL >> (BITS_PER_LONG
      - (size & (BITS_PER_LONG-1)))));
  if (tmp)
   goto found;
 }

 while (words) {
  tmp = addr[--words];
  if (tmp) {
found:
   return words * BITS_PER_LONG + __fls(tmp);
  }
 }


 return size;
}
