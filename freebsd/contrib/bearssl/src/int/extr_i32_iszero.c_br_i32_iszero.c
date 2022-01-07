
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



uint32_t
br_i32_iszero(const uint32_t *x)
{
 uint32_t z;
 size_t u;

 z = 0;
 for (u = (x[0] + 31) >> 5; u > 0; u --) {
  z |= x[u];
 }
 return ~(z | -z) >> 31;
}
