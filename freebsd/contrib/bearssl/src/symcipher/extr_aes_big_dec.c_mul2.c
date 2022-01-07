
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned
mul2(unsigned x)
{
 x <<= 1;
 return x ^ ((unsigned)(-(int)(x >> 8)) & 0x11B);
}
