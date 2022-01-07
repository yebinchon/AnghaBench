
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
typedef int br_x509_certificate ;
struct TYPE_5__ {int eng; } ;
typedef TYPE_1__ br_ssl_server_context ;
typedef int br_ec_private_key ;


 int BR_KEYTYPE_KEYX ;
 int BR_KEYTYPE_RSA ;
 int BR_TLS12 ;

 int br_ec_all_m15 ;
 int br_sha256_ID ;
 int br_sha256_vtable ;
 int br_ssl_engine_set_default_aes_gcm (int *) ;
 int br_ssl_engine_set_hash (int *,int ,int *) ;
 int br_ssl_engine_set_prf_sha256 (int *,int *) ;
 int br_ssl_engine_set_suites (int *,int const*,int) ;
 int br_ssl_engine_set_versions (int *,int ,int ) ;
 int br_ssl_server_set_single_ec (TYPE_1__*,int const*,size_t,int const*,int ,int ,int *,int ) ;
 int br_ssl_server_zero (TYPE_1__*) ;
 int br_tls12_sha256_prf ;

void
br_ssl_server_init_minu2g(br_ssl_server_context *cc,
 const br_x509_certificate *chain, size_t chain_len,
 const br_ec_private_key *sk)
{
 static const uint16_t suites[] = {
  128
 };




 br_ssl_server_zero(cc);
 br_ssl_engine_set_versions(&cc->eng, BR_TLS12, BR_TLS12);




 br_ssl_engine_set_suites(&cc->eng, suites,
  (sizeof suites) / (sizeof suites[0]));





 br_ssl_server_set_single_ec(cc, chain, chain_len, sk,
  BR_KEYTYPE_KEYX, BR_KEYTYPE_RSA, &br_ec_all_m15, 0);




 br_ssl_engine_set_hash(&cc->eng, br_sha256_ID, &br_sha256_vtable);




 br_ssl_engine_set_prf_sha256(&cc->eng, &br_tls12_sha256_prf);




 br_ssl_engine_set_default_aes_gcm(&cc->eng);
}
