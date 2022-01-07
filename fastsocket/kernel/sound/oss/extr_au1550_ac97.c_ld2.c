
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned
ld2(unsigned int x)
{
 unsigned r = 0;

 if (x >= 0x10000) {
  x >>= 16;
  r += 16;
 }
 if (x >= 0x100) {
  x >>= 8;
  r += 8;
 }
 if (x >= 0x10) {
  x >>= 4;
  r += 4;
 }
 if (x >= 4) {
  x >>= 2;
  r += 2;
 }
 if (x >= 2)
  r++;
 return r;
}
