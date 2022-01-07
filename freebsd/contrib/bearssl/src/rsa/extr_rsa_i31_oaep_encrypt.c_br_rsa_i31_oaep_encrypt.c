
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_rsa_public_key ;
typedef int br_prng_class ;
typedef int br_hash_class ;


 scalar_t__ br_rsa_i31_public (void*,size_t,int const*) ;
 size_t br_rsa_oaep_pad (int const**,int const*,void const*,size_t,int const*,void*,size_t,void const*,size_t) ;

size_t
br_rsa_i31_oaep_encrypt(
 const br_prng_class **rnd, const br_hash_class *dig,
 const void *label, size_t label_len,
 const br_rsa_public_key *pk,
 void *dst, size_t dst_max_len,
 const void *src, size_t src_len)
{
 size_t dlen;

 dlen = br_rsa_oaep_pad(rnd, dig, label, label_len,
  pk, dst, dst_max_len, src, src_len);
 if (dlen == 0) {
  return 0;
 }
 return dlen & -(size_t)br_rsa_i31_public(dst, dlen, pk);
}
