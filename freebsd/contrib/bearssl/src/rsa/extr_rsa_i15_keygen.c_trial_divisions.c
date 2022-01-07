
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int SMALL_PRIMES ;
 int br_i15_decode_reduce (int*,int ,int,int const*) ;
 int br_i15_moddiv (int*,int*,int const*,int,int*) ;
 int br_i15_ninv15 (int const) ;

__attribute__((used)) static uint32_t
trial_divisions(const uint16_t *x, uint16_t *t)
{
 uint16_t *y;
 uint16_t x0i;

 y = t;
 t += 1 + ((x[0] + 15) >> 4);
 x0i = br_i15_ninv15(x[1]);
 br_i15_decode_reduce(y, SMALL_PRIMES, sizeof SMALL_PRIMES, x);
 return br_i15_moddiv(y, y, x, x0i, t);
}
