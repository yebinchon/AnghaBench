
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int bitrev16 (int) ;

u32 bitrev32(u32 x)
{
 return (bitrev16(x & 0xffff) << 16) | bitrev16(x >> 16);
}
