
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pad; int mhash; } ;
struct TYPE_6__ {TYPE_1__ eng; scalar_t__ hash_id; TYPE_3__** client_auth_vtable; } ;
typedef TYPE_2__ br_ssl_client_context ;
struct TYPE_7__ {size_t (* do_sign ) (TYPE_3__**,scalar_t__,size_t,int ,int) ;} ;


 scalar_t__ br_md5_ID ;
 size_t br_multihash_out (int *,scalar_t__,int ) ;
 scalar_t__ br_sha1_ID ;
 size_t stub1 (TYPE_3__**,scalar_t__,size_t,int ,int) ;

__attribute__((used)) static size_t
make_client_sign(br_ssl_client_context *ctx)
{
 size_t hv_len;







 if (ctx->hash_id) {
  hv_len = br_multihash_out(&ctx->eng.mhash,
   ctx->hash_id, ctx->eng.pad);
 } else {
  br_multihash_out(&ctx->eng.mhash,
   br_md5_ID, ctx->eng.pad);
  br_multihash_out(&ctx->eng.mhash,
   br_sha1_ID, ctx->eng.pad + 16);
  hv_len = 36;
 }
 return (*ctx->client_auth_vtable)->do_sign(
  ctx->client_auth_vtable, ctx->hash_id, hv_len,
  ctx->eng.pad, sizeof ctx->eng.pad);
}
