
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned
gf256red(unsigned x)
{
 unsigned y;

 y = x >> 8;
 return (x ^ y ^ (y << 1) ^ (y << 3) ^ (y << 4)) & 0xFF;
}
