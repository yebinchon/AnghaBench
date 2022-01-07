
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static int cnttz(u32 word)
{
 int n;

 for (n = 0; n < 32; n++, word >>= 1) {
  if (word & 0x01)
   break;
 }

 return (n);
}
