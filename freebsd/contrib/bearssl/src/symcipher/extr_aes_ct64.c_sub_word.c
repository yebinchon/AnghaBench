
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int br_aes_ct64_bitslice_Sbox (int *) ;
 int br_aes_ct64_ortho (int *) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static uint32_t
sub_word(uint32_t x)
{
 uint64_t q[8];

 memset(q, 0, sizeof q);
 q[0] = x;
 br_aes_ct64_ortho(q);
 br_aes_ct64_bitslice_Sbox(q);
 br_aes_ct64_ortho(q);
 return (uint32_t)q[0];
}
