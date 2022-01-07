
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_ssl_engine_context ;


 int br_rsa_pkcs1_vrfy_get_default () ;
 int br_ssl_engine_set_rsavrfy (int *,int ) ;

void
br_ssl_engine_set_default_rsavrfy(br_ssl_engine_context *cc)
{
 br_ssl_engine_set_rsavrfy(cc, br_rsa_pkcs1_vrfy_get_default());
}
