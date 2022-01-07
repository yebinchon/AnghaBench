
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_ssl_engine_context ;
typedef scalar_t__ br_ghash ;
typedef int br_block_ctr_class ;


 int const br_aes_ct64_ctr_vtable ;
 int const br_aes_ct_ctr_vtable ;
 int * br_aes_pwr8_ctr_get_vtable () ;
 int * br_aes_x86ni_ctr_get_vtable () ;
 int br_ghash_ctmul ;
 int br_ghash_ctmul32 ;
 int br_ghash_ctmul64 ;
 scalar_t__ br_ghash_pclmul_get () ;
 scalar_t__ br_ghash_pwr8_get () ;
 int br_ssl_engine_set_aes_ctr (int *,int const*) ;
 int br_ssl_engine_set_gcm (int *,int *,int *) ;
 int br_ssl_engine_set_ghash (int *,scalar_t__) ;
 int br_sslrec_in_gcm_vtable ;
 int br_sslrec_out_gcm_vtable ;

void
br_ssl_engine_set_default_aes_gcm(br_ssl_engine_context *cc)
{





 br_ssl_engine_set_gcm(cc,
  &br_sslrec_in_gcm_vtable,
  &br_sslrec_out_gcm_vtable);
 br_ssl_engine_set_aes_ctr(cc, &br_aes_ct_ctr_vtable);
 br_ssl_engine_set_ghash(cc, &br_ghash_ctmul);

}
