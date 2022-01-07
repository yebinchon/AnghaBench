
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_ssl_engine_context ;
typedef int br_block_cbcenc_class ;
typedef int br_block_cbcdec_class ;


 int const br_aes_ct64_cbcdec_vtable ;
 int const br_aes_ct64_cbcenc_vtable ;
 int const br_aes_ct_cbcdec_vtable ;
 int const br_aes_ct_cbcenc_vtable ;
 int * br_aes_pwr8_cbcdec_get_vtable () ;
 int * br_aes_pwr8_cbcenc_get_vtable () ;
 int * br_aes_x86ni_cbcdec_get_vtable () ;
 int * br_aes_x86ni_cbcenc_get_vtable () ;
 int br_ssl_engine_set_aes_cbc (int *,int const*,int const*) ;
 int br_ssl_engine_set_cbc (int *,int *,int *) ;
 int br_sslrec_in_cbc_vtable ;
 int br_sslrec_out_cbc_vtable ;

void
br_ssl_engine_set_default_aes_cbc(br_ssl_engine_context *cc)
{





 br_ssl_engine_set_cbc(cc,
  &br_sslrec_in_cbc_vtable,
  &br_sslrec_out_cbc_vtable);
 br_ssl_engine_set_aes_cbc(cc,
  &br_aes_ct_cbcenc_vtable,
  &br_aes_ct_cbcdec_vtable);

}
