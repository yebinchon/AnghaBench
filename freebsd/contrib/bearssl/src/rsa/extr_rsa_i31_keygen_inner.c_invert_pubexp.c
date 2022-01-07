
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int br_i31_add (int*,int const*,int) ;
 int br_i31_moddiv (int*,int*,int const*,int ,int*) ;
 int br_i31_ninv31 (int const) ;
 int br_i31_zero (int*,int const) ;

__attribute__((used)) static uint32_t
invert_pubexp(uint32_t *d, const uint32_t *m, uint32_t e, uint32_t *t)
{
 uint32_t *f;
 uint32_t r;

 f = t;
 t += 1 + ((m[0] + 31) >> 5);




 br_i31_zero(d, m[0]);
 d[1] = 1;
 br_i31_zero(f, m[0]);
 f[1] = e & 0x7FFFFFFF;
 f[2] = e >> 31;
 r = br_i31_moddiv(d, f, m, br_i31_ninv31(m[1]), t);
 br_i31_add(d, m, (uint32_t)(1 - (d[1] & 1)));

 return r;
}
