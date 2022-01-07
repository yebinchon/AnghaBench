
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_10__ {int kso; int ksi; TYPE_4__* dig_vtable; } ;
typedef TYPE_2__ br_hmac_key_context ;
struct TYPE_9__ {int vtable; } ;
struct TYPE_11__ {size_t out_len; int kso; TYPE_1__ dig; } ;
typedef TYPE_3__ br_hmac_context ;
struct TYPE_12__ {int (* set_state ) (int *,int ,int ) ;int (* init ) (int *) ;} ;
typedef TYPE_4__ br_hash_class ;


 size_t block_size (TYPE_4__ const*) ;
 size_t br_digest_size (TYPE_4__ const*) ;
 int memcpy (int ,int ,int) ;
 int stub1 (int *) ;
 int stub2 (int *,int ,int ) ;

void
br_hmac_init(br_hmac_context *ctx,
 const br_hmac_key_context *kc, size_t out_len)
{
 const br_hash_class *dig;
 size_t blen, hlen;

 dig = kc->dig_vtable;
 blen = block_size(dig);
 dig->init(&ctx->dig.vtable);
 dig->set_state(&ctx->dig.vtable, kc->ksi, (uint64_t)blen);
 memcpy(ctx->kso, kc->kso, sizeof kc->kso);
 hlen = br_digest_size(dig);
 if (out_len > 0 && out_len < hlen) {
  hlen = out_len;
 }
 ctx->out_len = hlen;
}
