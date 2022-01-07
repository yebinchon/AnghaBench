
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int add_round_key (unsigned int*,int const*) ;
 int mix_columns (unsigned int*) ;
 int shift_rows (unsigned int*) ;
 int sub_bytes (unsigned int*) ;

void
br_aes_small_encrypt(unsigned num_rounds, const uint32_t *skey, void *data)
{
 unsigned char *buf;
 unsigned state[16];
 unsigned u;

 buf = data;
 for (u = 0; u < 16; u ++) {
  state[u] = buf[u];
 }
 add_round_key(state, skey);
 for (u = 1; u < num_rounds; u ++) {
  sub_bytes(state);
  shift_rows(state);
  mix_columns(state);
  add_round_key(state, skey + (u << 2));
 }
 sub_bytes(state);
 shift_rows(state);
 add_round_key(state, skey + (num_rounds << 2));
 for (u = 0; u < 16; u ++) {
  buf[u] = state[u];
 }
}
