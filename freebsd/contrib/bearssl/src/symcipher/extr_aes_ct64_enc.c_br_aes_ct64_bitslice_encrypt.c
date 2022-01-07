
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int add_round_key (int *,int const*) ;
 int br_aes_ct64_bitslice_Sbox (int *) ;
 int mix_columns (int *) ;
 int shift_rows (int *) ;

void
br_aes_ct64_bitslice_encrypt(unsigned num_rounds,
 const uint64_t *skey, uint64_t *q)
{
 unsigned u;

 add_round_key(q, skey);
 for (u = 1; u < num_rounds; u ++) {
  br_aes_ct64_bitslice_Sbox(q);
  shift_rows(q);
  mix_columns(q);
  add_round_key(q, skey + (u << 3));
 }
 br_aes_ct64_bitslice_Sbox(q);
 shift_rows(q);
 add_round_key(q, skey + (num_rounds << 3));
}
