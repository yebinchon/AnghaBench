
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_26__ {int vtable; } ;
struct TYPE_25__ {TYPE_2__ eng; } ;
typedef TYPE_1__ br_ssl_client_context ;


 int BR_TLS10 ;
 int BR_TLS12 ;
 int br_aes_ct_cbcdec_vtable ;
 int br_aes_ct_cbcenc_vtable ;
 int br_aes_ct_ctr_vtable ;
 int br_des_ct_cbcdec_vtable ;
 int br_des_ct_cbcenc_vtable ;
 int br_ec_prime_i31 ;
 int br_ecdsa_i31_vrfy_asn1 ;
 int br_ghash_ctmul ;
 int br_md5_ID ;
 int br_md5_vtable ;
 int br_rsa_i31_pkcs1_vrfy ;
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
 int br_ssl_client_set_default_rsapub (TYPE_1__*) ;
 int br_ssl_client_zero (TYPE_1__*) ;
 int br_ssl_engine_set_aes_cbc (TYPE_2__*,int *,int *) ;
 int br_ssl_engine_set_aes_ctr (TYPE_2__*,int *) ;
 int br_ssl_engine_set_cbc (TYPE_2__*,int *,int *) ;
 int br_ssl_engine_set_chapol (TYPE_2__*,int *,int *) ;
 int br_ssl_engine_set_default_ecdsa (TYPE_2__*) ;
 int br_ssl_engine_set_default_rsavrfy (TYPE_2__*) ;
 int br_ssl_engine_set_des_cbc (TYPE_2__*,int *,int *) ;
 int br_ssl_engine_set_gcm (TYPE_2__*,int *,int *) ;
 int br_ssl_engine_set_ghash (TYPE_2__*,int *) ;
 int br_ssl_engine_set_hash (TYPE_2__*,int ,int *) ;
 int br_ssl_engine_set_prf10 (TYPE_2__*,int *) ;
 int br_ssl_engine_set_prf_sha256 (TYPE_2__*,int *) ;
 int br_ssl_engine_set_prf_sha384 (TYPE_2__*,int *) ;
 int br_ssl_engine_set_suites (TYPE_2__*,int const*,int) ;
 int br_ssl_engine_set_versions (TYPE_2__*,int ,int ) ;
 int br_ssl_engine_set_x509 (TYPE_2__*,int *) ;
 int br_sslrec_in_cbc_vtable ;
 int br_sslrec_in_chapol_vtable ;
 int br_sslrec_in_gcm_vtable ;
 int br_sslrec_out_cbc_vtable ;
 int br_sslrec_out_chapol_vtable ;
 int br_sslrec_out_gcm_vtable ;
 int br_tls10_prf ;
 int br_tls12_sha256_prf ;
 int br_tls12_sha384_prf ;
 int br_x509_minimal_init (TYPE_2__*,int *,int ,int ) ;
 int br_x509_minimal_set_ecdsa (TYPE_2__*,int *,int *) ;
 int br_x509_minimal_set_rsa (TYPE_2__*,int *) ;
 int trust_anchors ;
 int trust_anchors_num ;
 TYPE_2__* xc ;

void
example_client_profile(br_ssl_client_context *cc
                                        )
{





 static const uint16_t suites[] = {
  157,
  149,
  161,
  153,
  158,
  150,
  162,
  154,
  159,
  151,
  163,
  155,
  160,
  152,
  145,
  138,
  142,
  135,
  146,
  139,
  143,
  136,
  147,
  140,
  144,
  137,
  131,
  128,
  132,
  129,
  133,
  130,
  164,
  156,
  148,
  141,
  134
 };





 br_ssl_client_zero(cc);
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
 br_ssl_client_set_default_rsapub(cc);
 br_ssl_engine_set_default_rsavrfy(&cc->eng);
 br_ssl_engine_set_default_ecdsa(&cc->eng);
 br_ssl_engine_set_cbc(&cc->eng,
  &br_sslrec_in_cbc_vtable,
  &br_sslrec_out_cbc_vtable);
 br_ssl_engine_set_gcm(&cc->eng,
  &br_sslrec_in_gcm_vtable,
  &br_sslrec_out_gcm_vtable);
 br_ssl_engine_set_chapol(&cc->eng,
  &br_sslrec_in_chapol_vtable,
  &br_sslrec_out_chapol_vtable);
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
