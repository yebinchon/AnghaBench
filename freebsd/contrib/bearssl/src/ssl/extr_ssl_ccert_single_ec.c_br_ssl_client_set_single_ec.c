
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int br_x509_certificate ;
struct TYPE_7__ {size_t chain_len; unsigned int allowed_usages; unsigned int issuer_key_type; int * vtable; int iecdsa; int const* iec; int * mhash; int const* sk; int const* chain; } ;
struct TYPE_8__ {TYPE_2__ single_ec; } ;
struct TYPE_6__ {int mhash; } ;
struct TYPE_9__ {TYPE_3__ client_auth; int ** client_auth_vtable; TYPE_1__ eng; } ;
typedef TYPE_4__ br_ssl_client_context ;
typedef int br_ecdsa_sign ;
typedef int br_ec_private_key ;
typedef int br_ec_impl ;


 int ccert_vtable ;

void
br_ssl_client_set_single_ec(br_ssl_client_context *cc,
 const br_x509_certificate *chain, size_t chain_len,
 const br_ec_private_key *sk, unsigned allowed_usages,
 unsigned cert_issuer_key_type,
 const br_ec_impl *iec, br_ecdsa_sign iecdsa)
{
 cc->client_auth.single_ec.vtable = &ccert_vtable;
 cc->client_auth.single_ec.chain = chain;
 cc->client_auth.single_ec.chain_len = chain_len;
 cc->client_auth.single_ec.sk = sk;
 cc->client_auth.single_ec.allowed_usages = allowed_usages;
 cc->client_auth.single_ec.issuer_key_type = cert_issuer_key_type;
 cc->client_auth.single_ec.mhash = &cc->eng.mhash;
 cc->client_auth.single_ec.iec = iec;
 cc->client_auth.single_ec.iecdsa = iecdsa;
 cc->client_auth_vtable = &cc->client_auth.single_ec.vtable;
}
