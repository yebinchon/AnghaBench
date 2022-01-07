
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ec; } ;
struct TYPE_6__ {TYPE_1__ key; int key_type; } ;
struct TYPE_7__ {unsigned int usages; TYPE_2__ pkey; int * vtable; } ;
typedef TYPE_3__ br_x509_knownkey_context ;
typedef int br_ec_public_key ;


 int BR_KEYTYPE_EC ;
 int br_x509_knownkey_vtable ;

void
br_x509_knownkey_init_ec(br_x509_knownkey_context *ctx,
 const br_ec_public_key *pk, unsigned usages)
{
 ctx->vtable = &br_x509_knownkey_vtable;
 ctx->pkey.key_type = BR_KEYTYPE_EC;
 ctx->pkey.key.ec = *pk;
 ctx->usages = usages;
}
