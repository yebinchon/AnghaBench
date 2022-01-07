
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int bitrev8 (int) ;

u16 bitrev16(u16 x)
{
 return (bitrev8(x & 0xff) << 8) | bitrev8(x >> 8);
}
