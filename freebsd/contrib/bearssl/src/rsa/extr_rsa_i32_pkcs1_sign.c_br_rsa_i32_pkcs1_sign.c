
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int n_bitlen; } ;
typedef TYPE_1__ br_rsa_private_key ;


 int br_rsa_i32_private (unsigned char*,TYPE_1__ const*) ;
 int br_rsa_pkcs1_sig_pad (unsigned char const*,unsigned char const*,size_t,int ,unsigned char*) ;

uint32_t
br_rsa_i32_pkcs1_sign(const unsigned char *hash_oid,
 const unsigned char *hash, size_t hash_len,
 const br_rsa_private_key *sk, unsigned char *x)
{
 if (!br_rsa_pkcs1_sig_pad(hash_oid, hash, hash_len, sk->n_bitlen, x)) {
  return 0;
 }
 return br_rsa_i32_private(x, sk);
}
