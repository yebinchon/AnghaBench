
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static void
dt_shift_128(uint64_t *a, int b)
{
 uint64_t mask;

 if (b == 0)
  return;

 if (b < 0) {
  b = -b;
  if (b >= 64) {
   a[0] = a[1] >> (b - 64);
   a[1] = 0;
  } else {
   a[0] >>= b;
   mask = 1LL << (64 - b);
   mask -= 1;
   a[0] |= ((a[1] & mask) << (64 - b));
   a[1] >>= b;
  }
 } else {
  if (b >= 64) {
   a[1] = a[0] << (b - 64);
   a[0] = 0;
  } else {
   a[1] <<= b;
   mask = a[0] >> (64 - b);
   a[1] |= mask;
   a[0] <<= b;
  }
 }
}
