
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int mhash; } ;
struct TYPE_8__ {TYPE_1__ eng; } ;
typedef TYPE_2__ br_ssl_server_context ;
struct TYPE_9__ {int vtable; } ;
typedef TYPE_3__ br_hash_compat_context ;
struct TYPE_10__ {size_t desc; int (* out ) (int *,void*) ;int (* update ) (int *,void const*,size_t) ;int (* init ) (int *) ;} ;
typedef TYPE_4__ br_hash_class ;


 size_t BR_HASHDESC_OUT_MASK ;
 size_t BR_HASHDESC_OUT_OFF ;
 int br_md5_ID ;
 TYPE_4__* br_multihash_getimpl (int *,int) ;
 int br_sha1_ID ;
 int memcpy (void*,unsigned char*,int) ;
 int stub1 (int *) ;
 int stub2 (int *,void const*,size_t) ;
 int stub3 (int *,unsigned char*) ;
 int stub4 (int *) ;
 int stub5 (int *,void const*,size_t) ;
 int stub6 (int *,unsigned char*) ;
 int stub7 (int *) ;
 int stub8 (int *,void const*,size_t) ;
 int stub9 (int *,void*) ;

__attribute__((used)) static size_t
hash_data(br_ssl_server_context *ctx,
 void *dst, int hash_id, const void *src, size_t len)
{
 const br_hash_class *hf;
 br_hash_compat_context hc;

 if (hash_id == 0) {
  unsigned char tmp[36];

  hf = br_multihash_getimpl(&ctx->eng.mhash, br_md5_ID);
  if (hf == ((void*)0)) {
   return 0;
  }
  hf->init(&hc.vtable);
  hf->update(&hc.vtable, src, len);
  hf->out(&hc.vtable, tmp);
  hf = br_multihash_getimpl(&ctx->eng.mhash, br_sha1_ID);
  if (hf == ((void*)0)) {
   return 0;
  }
  hf->init(&hc.vtable);
  hf->update(&hc.vtable, src, len);
  hf->out(&hc.vtable, tmp + 16);
  memcpy(dst, tmp, 36);
  return 36;
 } else {
  hf = br_multihash_getimpl(&ctx->eng.mhash, hash_id);
  if (hf == ((void*)0)) {
   return 0;
  }
  hf->init(&hc.vtable);
  hf->update(&hc.vtable, src, len);
  hf->out(&hc.vtable, dst);
  return (hf->desc >> BR_HASHDESC_OUT_OFF) & BR_HASHDESC_OUT_MASK;
 }
}
