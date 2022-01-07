
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_hash_class ;
typedef int br_ec_private_key ;
typedef int br_ec_impl ;


 int ORDER_LEN ;
 size_t br_ecdsa_i31_sign_raw (int const*,int const*,void const*,int const*,unsigned char*) ;
 size_t br_ecdsa_raw_to_asn1 (unsigned char*,size_t) ;
 int memcpy (void*,unsigned char*,size_t) ;

size_t
br_ecdsa_i31_sign_asn1(const br_ec_impl *impl,
 const br_hash_class *hf, const void *hash_value,
 const br_ec_private_key *sk, void *sig)
{
 unsigned char rsig[(ORDER_LEN << 1) + 12];
 size_t sig_len;

 sig_len = br_ecdsa_i31_sign_raw(impl, hf, hash_value, sk, rsig);
 if (sig_len == 0) {
  return 0;
 }
 sig_len = br_ecdsa_raw_to_asn1(rsig, sig_len);
 memcpy(sig, rsig, sig_len);
 return sig_len;
}
