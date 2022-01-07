
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int ubifs_assert (int) ;

__attribute__((used)) static void pack_bits(uint8_t **addr, int *pos, uint32_t val, int nrbits)
{
 uint8_t *p = *addr;
 int b = *pos;

 ubifs_assert(nrbits > 0);
 ubifs_assert(nrbits <= 32);
 ubifs_assert(*pos >= 0);
 ubifs_assert(*pos < 8);
 ubifs_assert((val >> nrbits) == 0 || nrbits == 32);
 if (b) {
  *p |= ((uint8_t)val) << b;
  nrbits += b;
  if (nrbits > 8) {
   *++p = (uint8_t)(val >>= (8 - b));
   if (nrbits > 16) {
    *++p = (uint8_t)(val >>= 8);
    if (nrbits > 24) {
     *++p = (uint8_t)(val >>= 8);
     if (nrbits > 32)
      *++p = (uint8_t)(val >>= 8);
    }
   }
  }
 } else {
  *p = (uint8_t)val;
  if (nrbits > 8) {
   *++p = (uint8_t)(val >>= 8);
   if (nrbits > 16) {
    *++p = (uint8_t)(val >>= 8);
    if (nrbits > 24)
     *++p = (uint8_t)(val >>= 8);
   }
  }
 }
 b = nrbits & 7;
 if (b == 0)
  p++;
 *addr = p;
 *pos = b;
}
