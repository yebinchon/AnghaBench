
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_5__ {int vtable; } ;
typedef TYPE_1__ gen_hash_context ;
struct TYPE_6__ {scalar_t__ buf; scalar_t__ count; TYPE_3__** impl; } ;
typedef TYPE_2__ br_multihash_context ;
struct TYPE_7__ {int (* state ) (int *,unsigned char*) ;int (* update ) (int *,scalar_t__,int) ;int (* set_state ) (int *,unsigned char*,scalar_t__) ;} ;
typedef TYPE_3__ br_hash_class ;


 int get_state_offset (int) ;
 int memcpy (scalar_t__,unsigned char const*,size_t) ;
 int stub1 (int *,unsigned char*,scalar_t__) ;
 int stub2 (int *,scalar_t__,int) ;
 int stub3 (int *,unsigned char*) ;

void
br_multihash_update(br_multihash_context *ctx, const void *data, size_t len)
{
 const unsigned char *buf;
 size_t ptr;

 buf = data;
 ptr = (size_t)ctx->count & 127;
 while (len > 0) {
  size_t clen;

  clen = 128 - ptr;
  if (clen > len) {
   clen = len;
  }
  memcpy(ctx->buf + ptr, buf, clen);
  ptr += clen;
  buf += clen;
  len -= clen;
  ctx->count += (uint64_t)clen;
  if (ptr == 128) {
   int i;

   for (i = 1; i <= 6; i ++) {
    const br_hash_class *hc;

    hc = ctx->impl[i - 1];
    if (hc != ((void*)0)) {
     gen_hash_context g;
     unsigned char *state;

     state = (unsigned char *)ctx
      + get_state_offset(i);
     hc->set_state(&g.vtable,
      state, ctx->count - 128);
     hc->update(&g.vtable, ctx->buf, 128);
     hc->state(&g.vtable, state);
    }
   }
   ptr = 0;
  }
 }
}
