
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int vtable; } ;
struct TYPE_7__ {TYPE_2__ dn_hash; TYPE_1__* dn_hash_impl; } ;
typedef TYPE_3__ br_x509_minimal_context ;
struct TYPE_5__ {int (* out ) (int *,unsigned char*) ;int (* update ) (int *,void const*,size_t) ;int (* init ) (int *) ;} ;


 int stub1 (int *) ;
 int stub2 (int *,void const*,size_t) ;
 int stub3 (int *,unsigned char*) ;

__attribute__((used)) static void
hash_dn(br_x509_minimal_context *ctx, const void *dn, size_t len,
 unsigned char *out)
{
 ctx->dn_hash_impl->init(&ctx->dn_hash.vtable);
 ctx->dn_hash_impl->update(&ctx->dn_hash.vtable, dn, len);
 ctx->dn_hash_impl->out(&ctx->dn_hash.vtable, out);
}
