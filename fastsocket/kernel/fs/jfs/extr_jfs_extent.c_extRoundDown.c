
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;



__attribute__((used)) static s64 extRoundDown(s64 nb)
{
 int i;
 u64 m, k;

 for (i = 0, m = (u64) 1 << 63; i < 64; i++, m >>= 1) {
  if (m & nb)
   break;
 }

 i = 63 - i;
 k = (u64) 1 << i;
 k = ((k - 1) & nb) ? k : k >> 1;

 return (k);
}
