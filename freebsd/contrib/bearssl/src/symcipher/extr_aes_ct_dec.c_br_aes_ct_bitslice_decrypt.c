
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int add_round_key (int *,int const*) ;
 int br_aes_ct_bitslice_invSbox (int *) ;
 int inv_mix_columns (int *) ;
 int inv_shift_rows (int *) ;

void
br_aes_ct_bitslice_decrypt(unsigned num_rounds,
 const uint32_t *skey, uint32_t *q)
{
 unsigned u;

 add_round_key(q, skey + (num_rounds << 3));
 for (u = num_rounds - 1; u > 0; u --) {
  inv_shift_rows(q);
  br_aes_ct_bitslice_invSbox(q);
  add_round_key(q, skey + (u << 3));
  inv_mix_columns(q);
 }
 inv_shift_rows(q);
 br_aes_ct_bitslice_invSbox(q);
 add_round_key(q, skey);
}
