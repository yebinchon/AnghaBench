
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 revbyte(u8 b)
{
 int rev = (b >> 4) | ((b & 0xf) << 4);
 rev = ((rev & 0xcc) >> 2) | ((rev & 0x33) << 2);
 rev = ((rev & 0xaa) >> 1) | ((rev & 0x55) << 1);
 return (u8) rev;
}
