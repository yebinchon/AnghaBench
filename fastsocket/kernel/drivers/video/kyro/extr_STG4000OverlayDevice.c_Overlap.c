
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 Overlap(u32 ulBits, u32 ulPattern)
{
 u32 ulCount = 0;

 while (ulBits) {
  if (!(ulPattern & 1))
   ulCount++;
  ulBits--;
  ulPattern = ulPattern >> 1;
 }

 return ulCount;

}
