
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int norm13 (int*,int*,int) ;

__attribute__((used)) static void
reduce_f256(uint32_t *d)
{
 uint32_t x;

 x = d[19] >> 9;
 d[19] &= 0x01FF;
 d[17] += x << 3;
 d[14] -= x << 10;
 d[7] -= x << 5;
 d[0] += x;
 norm13(d, d, 20);
}
