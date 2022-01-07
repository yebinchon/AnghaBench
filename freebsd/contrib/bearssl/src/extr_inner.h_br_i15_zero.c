
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int memset (int*,int ,int) ;

__attribute__((used)) static inline void
br_i15_zero(uint16_t *x, uint16_t bit_len)
{
 *x ++ = bit_len;
 memset(x, 0, ((bit_len + 15) >> 4) * sizeof *x);
}
