
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_13__ {TYPE_4__* vtable; } ;
struct TYPE_14__ {size_t out_len; int kso; TYPE_1__ dig; } ;
typedef TYPE_2__ br_hmac_context ;
struct TYPE_15__ {TYPE_4__* vtable; } ;
typedef TYPE_3__ br_hash_compat_context ;
struct TYPE_16__ {int (* out ) (TYPE_4__**,unsigned char*) ;int (* update ) (TYPE_4__**,unsigned char*,size_t) ;int (* set_state ) (TYPE_4__**,int ,int ) ;int (* init ) (TYPE_4__**) ;} ;
typedef TYPE_4__ br_hash_class ;


 size_t block_size (TYPE_4__ const*) ;
 size_t br_digest_size (TYPE_4__ const*) ;
 int memcpy (void*,unsigned char*,size_t) ;
 int stub1 (TYPE_4__**,unsigned char*) ;
 int stub2 (TYPE_4__**) ;
 int stub3 (TYPE_4__**,int ,int ) ;
 int stub4 (TYPE_4__**,unsigned char*,size_t) ;
 int stub5 (TYPE_4__**,unsigned char*) ;

size_t
br_hmac_out(const br_hmac_context *ctx, void *out)
{
 const br_hash_class *dig;
 br_hash_compat_context hc;
 unsigned char tmp[64];
 size_t blen, hlen;

 dig = ctx->dig.vtable;
 dig->out(&ctx->dig.vtable, tmp);
 blen = block_size(dig);
 dig->init(&hc.vtable);
 dig->set_state(&hc.vtable, ctx->kso, (uint64_t)blen);
 hlen = br_digest_size(dig);
 dig->update(&hc.vtable, tmp, hlen);
 dig->out(&hc.vtable, tmp);
 memcpy(out, tmp, ctx->out_len);
 return ctx->out_len;
}
