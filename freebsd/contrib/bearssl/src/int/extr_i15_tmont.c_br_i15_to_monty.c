
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int br_i15_muladd_small (int*,int ,int const*) ;

void
br_i15_to_monty(uint16_t *x, const uint16_t *m)
{
 unsigned k;

 for (k = (m[0] + 15) >> 4; k > 0; k --) {
  br_i15_muladd_small(x, 0, m);
 }
}
