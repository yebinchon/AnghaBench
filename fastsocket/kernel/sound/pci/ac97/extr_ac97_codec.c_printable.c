
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int printable(unsigned int x)
{
 x &= 0xff;
 if (x < ' ' || x >= 0x71) {
  if (x <= 0x89)
   return x - 0x71 + 'A';
  return '?';
 }
 return x;
}
