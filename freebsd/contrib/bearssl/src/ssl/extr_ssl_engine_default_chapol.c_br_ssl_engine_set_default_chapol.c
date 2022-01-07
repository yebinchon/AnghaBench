
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_ssl_engine_context ;
typedef int * br_poly1305_run ;
typedef int * br_chacha20_run ;


 int br_chacha20_ct_run ;
 int * br_chacha20_sse2_get () ;
 int br_poly1305_ctmul32_run ;
 int br_poly1305_ctmul_run ;
 int * br_poly1305_ctmulq_get () ;
 int br_ssl_engine_set_chacha20 (int *,int *) ;
 int br_ssl_engine_set_chapol (int *,int *,int *) ;
 int br_ssl_engine_set_poly1305 (int *,int *) ;
 int br_sslrec_in_chapol_vtable ;
 int br_sslrec_out_chapol_vtable ;

void
br_ssl_engine_set_default_chapol(br_ssl_engine_context *cc)
{







 br_ssl_engine_set_chapol(cc,
  &br_sslrec_in_chapol_vtable,
  &br_sslrec_out_chapol_vtable);






  br_ssl_engine_set_chacha20(cc, &br_chacha20_ct_run);
  br_ssl_engine_set_poly1305(cc, &br_poly1305_ctmul_run);




}
