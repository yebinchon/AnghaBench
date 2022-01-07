
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int br_i15_add (int*,int const*,int) ;
 int br_i15_moddiv (int*,int*,int const*,int ,int*) ;
 int br_i15_ninv15 (int const) ;
 int br_i15_zero (int*,int const) ;

__attribute__((used)) static uint32_t
invert_pubexp(uint16_t *d, const uint16_t *m, uint32_t e, uint16_t *t)
{
 uint16_t *f;
 uint32_t r;

 f = t;
 t += 1 + ((m[0] + 15) >> 4);




 br_i15_zero(d, m[0]);
 d[1] = 1;
 br_i15_zero(f, m[0]);
 f[1] = e & 0x7FFF;
 f[2] = (e >> 15) & 0x7FFF;
 f[3] = e >> 30;
 r = br_i15_moddiv(d, f, m, br_i15_ninv15(m[1]), t);
 br_i15_add(d, m, (uint32_t)(1 - (d[1] & 1)));

 return r;
}
