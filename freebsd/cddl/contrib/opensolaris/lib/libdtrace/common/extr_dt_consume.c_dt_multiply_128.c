
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int DT_MASK_LO ;
 int dt_add_128 (int*,int*,int*) ;
 int dt_shift_128 (int*,int) ;

__attribute__((used)) static void
dt_multiply_128(uint64_t factor1, uint64_t factor2, uint64_t *product)
{
 uint64_t hi1, hi2, lo1, lo2;
 uint64_t tmp[2];

 hi1 = factor1 >> 32;
 hi2 = factor2 >> 32;

 lo1 = factor1 & DT_MASK_LO;
 lo2 = factor2 & DT_MASK_LO;

 product[0] = lo1 * lo2;
 product[1] = hi1 * hi2;

 tmp[0] = hi1 * lo2;
 tmp[1] = 0;
 dt_shift_128(tmp, 32);
 dt_add_128(product, tmp, product);

 tmp[0] = hi2 * lo1;
 tmp[1] = 0;
 dt_shift_128(tmp, 32);
 dt_add_128(product, tmp, product);
}
