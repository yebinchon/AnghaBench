
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int bit; int* cur; } ;
typedef TYPE_1__ bitstr_t ;



__attribute__((used)) static unsigned int get_bitmap(bitstr_t *bs, unsigned int b)
{
 unsigned int v, l, shift, bytes;

 if (!b)
  return 0;

 l = bs->bit + b;

 if (l < 8) {
  v = (unsigned int)(*bs->cur) << (bs->bit + 24);
  bs->bit = l;
 } else if (l == 8) {
  v = (unsigned int)(*bs->cur++) << (bs->bit + 24);
  bs->bit = 0;
 } else {
  for (bytes = l >> 3, shift = 24, v = 0; bytes;
       bytes--, shift -= 8)
   v |= (unsigned int)(*bs->cur++) << shift;

  if (l < 32) {
   v |= (unsigned int)(*bs->cur) << shift;
   v <<= bs->bit;
  } else if (l > 32) {
   v <<= bs->bit;
   v |= (*bs->cur) >> (8 - bs->bit);
  }

  bs->bit = l & 0x7;
 }

 v &= 0xffffffff << (32 - b);

 return v;
}
