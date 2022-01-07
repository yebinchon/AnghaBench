
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_ssl_client_context ;


 int br_rsa_public_get_default () ;
 int br_ssl_client_set_rsapub (int *,int ) ;

void
br_ssl_client_set_default_rsapub(br_ssl_client_context *cc)
{
 br_ssl_client_set_rsapub(cc, br_rsa_public_get_default());
}
