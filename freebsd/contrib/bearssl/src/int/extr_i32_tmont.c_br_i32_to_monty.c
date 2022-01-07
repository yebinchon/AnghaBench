
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int br_i32_muladd_small (int*,int ,int const*) ;

void
br_i32_to_monty(uint32_t *x, const uint32_t *m)
{
 uint32_t k;

 for (k = (m[0] + 31) >> 5; k > 0; k --) {
  br_i32_muladd_small(x, 0, m);
 }
}
