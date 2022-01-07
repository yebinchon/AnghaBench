
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_ssl_engine_context ;


 int br_des_ct_cbcdec_vtable ;
 int br_des_ct_cbcenc_vtable ;
 int br_ssl_engine_set_cbc (int *,int *,int *) ;
 int br_ssl_engine_set_des_cbc (int *,int *,int *) ;
 int br_sslrec_in_cbc_vtable ;
 int br_sslrec_out_cbc_vtable ;

void
br_ssl_engine_set_default_des_cbc(br_ssl_engine_context *cc)
{
 br_ssl_engine_set_cbc(cc,
  &br_sslrec_in_cbc_vtable,
  &br_sslrec_out_cbc_vtable);
 br_ssl_engine_set_des_cbc(cc,
  &br_des_ct_cbcenc_vtable,
  &br_des_ct_cbcdec_vtable);
}
