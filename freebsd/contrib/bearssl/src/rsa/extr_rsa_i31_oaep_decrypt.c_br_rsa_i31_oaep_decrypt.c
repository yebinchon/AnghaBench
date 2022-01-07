
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int n_bitlen; } ;
typedef TYPE_1__ br_rsa_private_key ;
typedef int br_hash_class ;


 int br_rsa_i31_private (void*,TYPE_1__ const*) ;
 int br_rsa_oaep_unpad (int const*,void const*,size_t,void*,size_t*) ;

uint32_t
br_rsa_i31_oaep_decrypt(const br_hash_class *dig,
 const void *label, size_t label_len,
 const br_rsa_private_key *sk, void *data, size_t *len)
{
 uint32_t r;

 if (*len != ((sk->n_bitlen + 7) >> 3)) {
  return 0;
 }
 r = br_rsa_i31_private(data, sk);
 r &= br_rsa_oaep_unpad(dig, label, label_len, data, len);
 return r;
}
