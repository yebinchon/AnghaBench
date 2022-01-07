
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int br_x509_trust_anchor ;
struct TYPE_4__ {size_t trust_anchors_num; int const* trust_anchors; int const* dn_hash_impl; int * vtable; } ;
typedef TYPE_1__ br_x509_minimal_context ;
typedef int br_hash_class ;


 int br_x509_minimal_vtable ;
 int memset (TYPE_1__*,int ,int) ;

void
br_x509_minimal_init(br_x509_minimal_context *ctx,
 const br_hash_class *dn_hash_impl,
 const br_x509_trust_anchor *trust_anchors, size_t trust_anchors_num)
{
 memset(ctx, 0, sizeof *ctx);
 ctx->vtable = &br_x509_minimal_vtable;
 ctx->dn_hash_impl = dn_hash_impl;
 ctx->trust_anchors = trust_anchors;
 ctx->trust_anchors_num = trust_anchors_num;
}
