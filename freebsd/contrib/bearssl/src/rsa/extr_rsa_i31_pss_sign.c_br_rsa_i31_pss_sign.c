
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int n_bitlen; } ;
typedef TYPE_1__ br_rsa_private_key ;
typedef int br_prng_class ;
typedef int br_hash_class ;


 int br_rsa_i31_private (unsigned char*,TYPE_1__ const*) ;
 int br_rsa_pss_sig_pad (int const**,int const*,int const*,unsigned char const*,size_t,int ,unsigned char*) ;

uint32_t
br_rsa_i31_pss_sign(const br_prng_class **rng,
 const br_hash_class *hf_data, const br_hash_class *hf_mgf1,
 const unsigned char *hash, size_t salt_len,
 const br_rsa_private_key *sk, unsigned char *x)
{
 if (!br_rsa_pss_sig_pad(rng, hf_data, hf_mgf1, hash,
  salt_len, sk->n_bitlen, x))
 {
  return 0;
 }
 return br_rsa_i31_private(x, sk);
}
