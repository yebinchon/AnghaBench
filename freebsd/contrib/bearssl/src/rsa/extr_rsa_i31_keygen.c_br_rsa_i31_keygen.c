
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int br_rsa_public_key ;
typedef int br_rsa_private_key ;
typedef int br_prng_class ;


 int br_i31_modpow_opt ;
 int br_rsa_i31_keygen_inner (int const**,int *,void*,int *,void*,unsigned int,int ,int *) ;

uint32_t
br_rsa_i31_keygen(const br_prng_class **rng,
 br_rsa_private_key *sk, void *kbuf_priv,
 br_rsa_public_key *pk, void *kbuf_pub,
 unsigned size, uint32_t pubexp)
{
 return br_rsa_i31_keygen_inner(rng,
  sk, kbuf_priv, pk, kbuf_pub, size, pubexp,
  &br_i31_modpow_opt);
}
