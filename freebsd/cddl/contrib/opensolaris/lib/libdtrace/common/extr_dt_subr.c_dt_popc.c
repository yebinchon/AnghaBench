
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong_t ;



ulong_t
dt_popc(ulong_t x)
{
 x = x - ((x >> 1) & 0x5555555555555555ULL);
 x = (x & 0x3333333333333333ULL) + ((x >> 2) & 0x3333333333333333ULL);
 x = (x + (x >> 4)) & 0x0F0F0F0F0F0F0F0FULL;
 x = x + (x >> 8);
 x = x + (x >> 16);
 x = x + (x >> 32);
 return (x & 0x7F);



}
