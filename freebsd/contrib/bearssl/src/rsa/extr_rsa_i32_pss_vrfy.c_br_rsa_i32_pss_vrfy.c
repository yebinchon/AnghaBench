
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int br_rsa_public_key ;
typedef int br_hash_class ;


 int BR_MAX_RSA_SIZE ;
 int br_rsa_i32_public (unsigned char*,size_t,int const*) ;
 int br_rsa_pss_sig_unpad (int const*,int const*,void const*,size_t,int const*,unsigned char*) ;
 int memcpy (unsigned char*,unsigned char const*,size_t) ;

uint32_t
br_rsa_i32_pss_vrfy(const unsigned char *x, size_t xlen,
 const br_hash_class *hf_data, const br_hash_class *hf_mgf1,
 const void *hash, size_t salt_len, const br_rsa_public_key *pk)
{
 unsigned char sig[BR_MAX_RSA_SIZE >> 3];

 if (xlen > (sizeof sig)) {
  return 0;
 }
 memcpy(sig, x, xlen);
 if (!br_rsa_i32_public(sig, xlen, pk)) {
  return 0;
 }
 return br_rsa_pss_sig_unpad(hf_data, hf_mgf1,
  hash, salt_len, pk, sig);
}
