
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



void
br_des_do_IP(uint32_t *xl, uint32_t *xr)
{





 uint32_t l, r, t;

 l = *xl;
 r = *xr;
 t = ((l >> 4) ^ r) & (uint32_t)0x0F0F0F0F;
 r ^= t;
 l ^= t << 4;
 t = ((l >> 16) ^ r) & (uint32_t)0x0000FFFF;
 r ^= t;
 l ^= t << 16;
 t = ((r >> 2) ^ l) & (uint32_t)0x33333333;
 l ^= t;
 r ^= t << 2;
 t = ((r >> 8) ^ l) & (uint32_t)0x00FF00FF;
 l ^= t;
 r ^= t << 8;
 t = ((l >> 1) ^ r) & (uint32_t)0x55555555;
 r ^= t;
 l ^= t << 1;
 *xl = l;
 *xr = r;
}
