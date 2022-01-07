
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int assert (int) ;
 int dt_add_128 (int*,int*,int*) ;
 scalar_t__ dt_le_128 (int*,int*) ;
 int dt_nbits_128 (int*) ;
 int dt_shift_128 (int*,int) ;
 int dt_subtract_128 (int*,int*,int*) ;

__attribute__((used)) static uint64_t
dt_sqrt_128(uint64_t *square)
{
 uint64_t result[2] = { 0, 0 };
 uint64_t diff[2] = { 0, 0 };
 uint64_t one[2] = { 1, 0 };
 uint64_t next_pair[2];
 uint64_t next_try[2];
 uint64_t bit_pairs, pair_shift;
 int i;

 bit_pairs = dt_nbits_128(square) / 2;
 pair_shift = bit_pairs * 2;

 for (i = 0; i <= bit_pairs; i++) {



  next_pair[0] = square[0];
  next_pair[1] = square[1];
  dt_shift_128(next_pair, -pair_shift);
  next_pair[0] &= 0x3;
  next_pair[1] = 0;

  dt_shift_128(diff, 2);
  dt_add_128(diff, next_pair, diff);




  next_try[0] = result[0];
  next_try[1] = result[1];
  dt_shift_128(next_try, 2);
  dt_add_128(next_try, one, next_try);

  if (dt_le_128(next_try, diff)) {
   dt_subtract_128(diff, next_try, diff);
   dt_shift_128(result, 1);
   dt_add_128(result, one, result);
  } else {
   dt_shift_128(result, 1);
  }

  pair_shift -= 2;
 }

 assert(result[1] == 0);

 return (result[0]);
}
