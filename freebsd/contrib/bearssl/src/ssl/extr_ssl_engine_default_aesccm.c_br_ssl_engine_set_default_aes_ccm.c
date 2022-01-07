
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_ssl_engine_context ;
typedef int br_block_ctrcbc_class ;


 int const br_aes_ct64_ctrcbc_vtable ;
 int const br_aes_ct_ctrcbc_vtable ;
 int * br_aes_pwr8_ctrcbc_get_vtable () ;
 int * br_aes_x86ni_ctrcbc_get_vtable () ;
 int br_ssl_engine_set_aes_ctrcbc (int *,int const*) ;
 int br_ssl_engine_set_ccm (int *,int *,int *) ;
 int br_sslrec_in_ccm_vtable ;
 int br_sslrec_out_ccm_vtable ;

void
br_ssl_engine_set_default_aes_ccm(br_ssl_engine_context *cc)
{




 br_ssl_engine_set_ccm(cc,
  &br_sslrec_in_ccm_vtable,
  &br_sslrec_out_ccm_vtable);
 br_ssl_engine_set_aes_ctrcbc(cc, &br_aes_ct_ctrcbc_vtable);


}
