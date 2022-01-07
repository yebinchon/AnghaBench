
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_16__ {TYPE_3__* vtable; } ;
struct TYPE_15__ {size_t out_len; int kso; TYPE_2__ dig; } ;
typedef TYPE_1__ br_hmac_context ;
typedef TYPE_2__ br_hash_compat_context ;
struct TYPE_17__ {int desc; int (* state ) (TYPE_3__**,unsigned char*) ;int (* out ) (TYPE_3__**,unsigned char*) ;int (* update ) (TYPE_3__**,unsigned char*,size_t) ;int (* set_state ) (TYPE_3__**,int ,int) ;int (* init ) (TYPE_3__**) ;} ;
typedef TYPE_3__ br_hash_class ;


 int BR_HASHDESC_MD_PADDING_128 ;
 int BR_HASHDESC_MD_PADDING_BE ;
 int CCOPY (int ,unsigned char*,unsigned char*,size_t) ;
 int EQ (int,int) ;
 int LE (int,int) ;
 int LT (int,int) ;
 void* MUX (int ,int,int) ;
 int block_size (TYPE_3__ const*) ;
 size_t hash_size (TYPE_3__ const*) ;
 int memcpy (void*,unsigned char*,size_t) ;
 int memset (unsigned char*,int ,int) ;
 int stub1 (TYPE_3__**,unsigned char*) ;
 int stub2 (TYPE_3__**,void const*,size_t) ;
 int stub3 (TYPE_3__**,unsigned char*,int) ;
 int stub4 (TYPE_3__**,unsigned char*) ;
 int stub5 (TYPE_3__**) ;
 int stub6 (TYPE_3__**,int ,int) ;
 int stub7 (TYPE_3__**,unsigned char*,size_t) ;
 int stub8 (TYPE_3__**,unsigned char*) ;

size_t
br_hmac_outCT(const br_hmac_context *ctx,
 const void *data, size_t len, size_t min_len, size_t max_len,
 void *out)
{
 const br_hash_class *dig;
 br_hash_compat_context hc;
 int be;
 uint32_t po, bs;
 uint32_t kr, km, kl, kz, u;
 uint64_t count, ncount, bit_len;
 unsigned char tmp1[64], tmp2[64];
 size_t hlen;




 hc = ctx->dig;




 dig = hc.vtable;
 be = (dig->desc & BR_HASHDESC_MD_PADDING_BE) != 0;
 po = 9;
 if (dig->desc & BR_HASHDESC_MD_PADDING_128) {
  po += 8;
 }
 bs = block_size(dig);
 hlen = hash_size(dig);




 count = dig->state(&hc.vtable, tmp1);
 bit_len = (count + (uint64_t)len) << 3;






 ncount = (count + (uint64_t)min_len) & ~(uint64_t)(bs - 1);
 if (ncount > count) {
  size_t zlen;

  zlen = (size_t)(ncount - count);
  dig->update(&hc.vtable, data, zlen);
  data = (const unsigned char *)data + zlen;
  len -= zlen;
  max_len -= zlen;
  count = ncount;
 }
 kr = (uint32_t)count & (bs - 1);
 kz = ((kr + (uint32_t)len + po + bs - 1) & ~(bs - 1)) - 1 - kr;
 kl = kz - 7;
 km = ((kr + (uint32_t)max_len + po + bs - 1) & ~(bs - 1)) - kr;
 memset(tmp2, 0, sizeof tmp2);
 for (u = 0; u < km; u ++) {
  uint32_t v;
  uint32_t d, e, x0, x1;
  unsigned char x[1];

  d = (u < max_len) ? ((const unsigned char *)data)[u] : 0x00;
  v = (kr + u) & (bs - 1);
  if (v >= (bs - 8)) {
   unsigned j;

   j = (v - (bs - 8)) << 3;
   if (be) {
    e = (uint32_t)(bit_len >> (56 - j));
   } else {
    e = (uint32_t)(bit_len >> j);
   }
   e &= 0xFF;
  } else {
   e = 0x00;
  }
  x0 = MUX(EQ(u, (uint32_t)len), 0x80, d);
  x1 = MUX(LT(u, kl), 0x00, e);
  x[0] = MUX(LE(u, (uint32_t)len), x0, x1);
  dig->update(&hc.vtable, x, 1);
  if (v == (bs - 1)) {
   dig->state(&hc.vtable, tmp1);
   CCOPY(EQ(u, kz), tmp2, tmp1, hlen);
  }
 }




 dig->init(&hc.vtable);
 dig->set_state(&hc.vtable, ctx->kso, (uint64_t)bs);
 dig->update(&hc.vtable, tmp2, hlen);
 dig->out(&hc.vtable, tmp2);
 memcpy(out, tmp2, ctx->out_len);
 return ctx->out_len;
}
