
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int br_x509_certificate ;
struct TYPE_5__ {size_t chain_len; int * vtable; int irsasign; int const* sk; int const* chain; } ;
struct TYPE_6__ {TYPE_1__ single_rsa; } ;
struct TYPE_7__ {TYPE_2__ client_auth; int ** client_auth_vtable; } ;
typedef TYPE_3__ br_ssl_client_context ;
typedef int br_rsa_private_key ;
typedef int br_rsa_pkcs1_sign ;


 int ccert_vtable ;

void
br_ssl_client_set_single_rsa(br_ssl_client_context *cc,
 const br_x509_certificate *chain, size_t chain_len,
 const br_rsa_private_key *sk, br_rsa_pkcs1_sign irsasign)
{
 cc->client_auth.single_rsa.vtable = &ccert_vtable;
 cc->client_auth.single_rsa.chain = chain;
 cc->client_auth.single_rsa.chain_len = chain_len;
 cc->client_auth.single_rsa.sk = sk;
 cc->client_auth.single_rsa.irsasign = irsasign;
 cc->client_auth_vtable = &cc->client_auth.single_rsa.vtable;
}
