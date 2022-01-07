
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int (* init ) (int *,unsigned char*,int) ;} ;
typedef TYPE_2__ br_block_ctr_class ;
struct TYPE_7__ {int vtable; } ;
struct TYPE_9__ {scalar_t__ cc; TYPE_1__ sk; int * vtable; } ;
typedef TYPE_3__ br_aesctr_drbg_context ;


 int br_aesctr_drbg_update (TYPE_3__*,void const*,size_t) ;
 int br_aesctr_drbg_vtable ;
 int memset (unsigned char*,int ,int) ;
 int stub1 (int *,unsigned char*,int) ;

void
br_aesctr_drbg_init(br_aesctr_drbg_context *ctx,
 const br_block_ctr_class *aesctr,
 const void *seed, size_t len)
{
 unsigned char tmp[16];

 ctx->vtable = &br_aesctr_drbg_vtable;
 memset(tmp, 0, sizeof tmp);
 aesctr->init(&ctx->sk.vtable, tmp, 16);
 ctx->cc = 0;
 br_aesctr_drbg_update(ctx, seed, len);
}
