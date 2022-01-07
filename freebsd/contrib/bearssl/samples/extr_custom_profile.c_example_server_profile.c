
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
typedef int br_x509_certificate ;
struct TYPE_5__ {int eng; } ;
typedef TYPE_1__ br_ssl_server_context ;
typedef int br_rsa_private_key ;


 int BR_KEYTYPE_KEYX ;
 int BR_KEYTYPE_SIGN ;
 int BR_TLS10 ;
 int BR_TLS12 ;
 int br_aes_ct_cbcdec_vtable ;
 int br_aes_ct_cbcenc_vtable ;
 int br_aes_ct_ctr_vtable ;
 int br_des_ct_cbcdec_vtable ;
 int br_des_ct_cbcenc_vtable ;
 int br_ec_prime_i31 ;
 int br_ghash_ctmul ;
 int br_md5_ID ;
 int br_md5_vtable ;
 int br_rsa_i31_pkcs1_sign ;
 int br_rsa_i31_private ;
 int br_sha1_ID ;
 int br_sha1_vtable ;
 int br_sha224_ID ;
 int br_sha224_vtable ;
 int br_sha256_ID ;
 int br_sha256_vtable ;
 int br_sha384_ID ;
 int br_sha384_vtable ;
 int br_sha512_ID ;
 int br_sha512_vtable ;
 int br_ssl_engine_set_aes_cbc (int *,int *,int *) ;
 int br_ssl_engine_set_aes_ctr (int *,int *) ;
 int br_ssl_engine_set_cbc (int *,int *,int *) ;
 int br_ssl_engine_set_des_cbc (int *,int *,int *) ;
 int br_ssl_engine_set_ec (int *,int *) ;
 int br_ssl_engine_set_gcm (int *,int *,int *) ;
 int br_ssl_engine_set_ghash (int *,int *) ;
 int br_ssl_engine_set_hash (int *,int ,int *) ;
 int br_ssl_engine_set_prf10 (int *,int *) ;
 int br_ssl_engine_set_prf_sha256 (int *,int *) ;
 int br_ssl_engine_set_prf_sha384 (int *,int *) ;
 int br_ssl_engine_set_suites (int *,int const*,int) ;
 int br_ssl_engine_set_versions (int *,int ,int ) ;
 int br_ssl_server_set_single_rsa (TYPE_1__*,int const*,size_t,int const*,int,int ,int ) ;
 int br_ssl_server_zero (TYPE_1__*) ;
 int br_sslrec_in_cbc_vtable ;
 int br_sslrec_in_gcm_vtable ;
 int br_sslrec_out_cbc_vtable ;
 int br_sslrec_out_gcm_vtable ;
 int br_tls10_prf ;
 int br_tls12_sha256_prf ;
 int br_tls12_sha384_prf ;

void
example_server_profile(br_ssl_server_context *cc,
 const br_x509_certificate *chain, size_t chain_len,
 const br_rsa_private_key *sk)
{
 static const uint16_t suites[] = {
  138,
  135,
  139,
  136,
  140,
  137,
  131,
  128,
  132,
  129,
  133,
  130,
  141,
  134
 };

 br_ssl_server_zero(cc);
 br_ssl_engine_set_versions(&cc->eng, BR_TLS10, BR_TLS12);

 br_ssl_engine_set_prf10(&cc->eng, &br_tls10_prf);
 br_ssl_engine_set_prf_sha256(&cc->eng, &br_tls12_sha256_prf);
 br_ssl_engine_set_prf_sha384(&cc->eng, &br_tls12_sha384_prf);
 br_ssl_engine_set_hash(&cc->eng, br_md5_ID, &br_md5_vtable);
 br_ssl_engine_set_hash(&cc->eng, br_sha1_ID, &br_sha1_vtable);
 br_ssl_engine_set_hash(&cc->eng, br_sha224_ID, &br_sha224_vtable);
 br_ssl_engine_set_hash(&cc->eng, br_sha256_ID, &br_sha256_vtable);
 br_ssl_engine_set_hash(&cc->eng, br_sha384_ID, &br_sha384_vtable);
 br_ssl_engine_set_hash(&cc->eng, br_sha512_ID, &br_sha512_vtable);

 br_ssl_engine_set_suites(&cc->eng, suites,
  (sizeof suites) / (sizeof suites[0]));





 br_ssl_engine_set_ec(&cc->eng, &br_ec_prime_i31);
 br_ssl_server_set_single_rsa(cc, chain, chain_len, sk,
  BR_KEYTYPE_KEYX | BR_KEYTYPE_SIGN,
  br_rsa_i31_private, br_rsa_i31_pkcs1_sign);
 br_ssl_engine_set_cbc(&cc->eng,
  &br_sslrec_in_cbc_vtable,
  &br_sslrec_out_cbc_vtable);
 br_ssl_engine_set_gcm(&cc->eng,
  &br_sslrec_in_gcm_vtable,
  &br_sslrec_out_gcm_vtable);

 br_ssl_engine_set_aes_cbc(&cc->eng,
  &br_aes_ct_cbcenc_vtable,
  &br_aes_ct_cbcdec_vtable);
 br_ssl_engine_set_aes_ctr(&cc->eng,
  &br_aes_ct_ctr_vtable);
 br_ssl_engine_set_des_cbc(&cc->eng,
  &br_des_ct_cbcenc_vtable,
  &br_des_ct_cbcdec_vtable);






 br_ssl_engine_set_ghash(&cc->eng,
  &br_ghash_ctmul);
}
