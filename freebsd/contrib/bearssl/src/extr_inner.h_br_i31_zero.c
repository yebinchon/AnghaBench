
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int memset (int*,int ,int) ;

__attribute__((used)) static inline void
br_i31_zero(uint32_t *x, uint32_t bit_len)
{
 *x ++ = bit_len;
 memset(x, 0, ((bit_len + 31) >> 5) * sizeof *x);
}
