
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int br_ec_public_key ;
typedef int br_ec_impl ;


 int FIELD_LEN ;
 size_t br_ecdsa_asn1_to_raw (unsigned char*,size_t) ;
 int br_ecdsa_i15_vrfy_raw (int const*,void const*,size_t,int const*,unsigned char*,size_t) ;
 int memcpy (unsigned char*,void const*,size_t) ;

uint32_t
br_ecdsa_i15_vrfy_asn1(const br_ec_impl *impl,
 const void *hash, size_t hash_len,
 const br_ec_public_key *pk,
 const void *sig, size_t sig_len)
{




 unsigned char rsig[(FIELD_LEN << 2) + 24];

 if (sig_len > ((sizeof rsig) >> 1)) {
  return 0;
 }
 memcpy(rsig, sig, sig_len);
 sig_len = br_ecdsa_asn1_to_raw(rsig, sig_len);
 return br_ecdsa_i15_vrfy_raw(impl, hash, hash_len, pk, rsig, sig_len);
}
