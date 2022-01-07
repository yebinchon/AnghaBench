
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int add_round_key (unsigned int*,int const*) ;
 int inv_mix_columns (unsigned int*) ;
 int inv_shift_rows (unsigned int*) ;
 int inv_sub_bytes (unsigned int*) ;

void
br_aes_small_decrypt(unsigned num_rounds, const uint32_t *skey, void *data)
{
 unsigned char *buf;
 unsigned state[16];
 unsigned u;

 buf = data;
 for (u = 0; u < 16; u ++) {
  state[u] = buf[u];
 }
 add_round_key(state, skey + (num_rounds << 2));
 for (u = num_rounds - 1; u > 0; u --) {
  inv_shift_rows(state);
  inv_sub_bytes(state);
  add_round_key(state, skey + (u << 2));
  inv_mix_columns(state);
 }
 inv_shift_rows(state);
 inv_sub_bytes(state);
 add_round_key(state, skey);
 for (u = 0; u < 16; u ++) {
  buf[u] = state[u];
 }
}
