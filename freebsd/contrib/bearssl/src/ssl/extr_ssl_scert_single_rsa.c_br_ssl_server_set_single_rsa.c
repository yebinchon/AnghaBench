
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int br_x509_certificate ;
struct TYPE_5__ {size_t chain_len; unsigned int allowed_usages; int * vtable; int irsasign; int irsacore; int const* sk; int const* chain; } ;
struct TYPE_6__ {TYPE_1__ single_rsa; } ;
struct TYPE_7__ {TYPE_2__ chain_handler; int ** policy_vtable; } ;
typedef TYPE_3__ br_ssl_server_context ;
typedef int br_rsa_private_key ;
typedef int br_rsa_private ;
typedef int br_rsa_pkcs1_sign ;


 int sr_policy_vtable ;

void
br_ssl_server_set_single_rsa(br_ssl_server_context *cc,
 const br_x509_certificate *chain, size_t chain_len,
 const br_rsa_private_key *sk, unsigned allowed_usages,
 br_rsa_private irsacore, br_rsa_pkcs1_sign irsasign)
{
 cc->chain_handler.single_rsa.vtable = &sr_policy_vtable;
 cc->chain_handler.single_rsa.chain = chain;
 cc->chain_handler.single_rsa.chain_len = chain_len;
 cc->chain_handler.single_rsa.sk = sk;
 cc->chain_handler.single_rsa.allowed_usages = allowed_usages;
 cc->chain_handler.single_rsa.irsacore = irsacore;
 cc->chain_handler.single_rsa.irsasign = irsasign;
 cc->policy_vtable = &cc->chain_handler.single_rsa.vtable;
}
