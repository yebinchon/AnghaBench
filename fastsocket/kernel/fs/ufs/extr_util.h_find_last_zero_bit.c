
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned find_last_zero_bit (unsigned char * bitmap,
 unsigned size, unsigned offset)
{
 unsigned bit, i;
 unsigned char * mapp;
 unsigned char map;

 mapp = bitmap + (size >> 3);
 map = *mapp--;
 bit = 1 << (size & 7);
 for (i = size; i > offset; i--) {
  if ((map & bit) == 0)
   break;
  if ((i & 7) != 0) {
   bit >>= 1;
  } else {
   map = *mapp--;
   bit = 1 << 7;
  }
 }
 return i;
}
