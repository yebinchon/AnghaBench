
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int br_aes_ct_bitslice_Sbox (int *) ;
 int br_aes_ct_ortho (int *) ;

__attribute__((used)) static uint32_t
sub_word(uint32_t x)
{
 uint32_t q[8];
 int i;

 for (i = 0; i < 8; i ++) {
  q[i] = x;
 }
 br_aes_ct_ortho(q);
 br_aes_ct_bitslice_Sbox(q);
 br_aes_ct_ortho(q);
 return q[0];
}
