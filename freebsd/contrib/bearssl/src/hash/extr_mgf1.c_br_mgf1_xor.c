
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_9__ {TYPE_2__ const* vtable; } ;
typedef TYPE_1__ br_hash_compat_context ;
struct TYPE_10__ {int (* out ) (TYPE_2__ const**,unsigned char*) ;int (* update ) (TYPE_2__ const**,unsigned char*,int) ;int (* init ) (TYPE_2__ const**) ;} ;
typedef TYPE_2__ br_hash_class ;


 size_t br_digest_size (TYPE_2__ const*) ;
 int br_enc32be (unsigned char*,scalar_t__) ;
 int stub1 (TYPE_2__ const**) ;
 int stub2 (TYPE_2__ const**,void const*,size_t) ;
 int stub3 (TYPE_2__ const**,unsigned char*,int) ;
 int stub4 (TYPE_2__ const**,unsigned char*) ;

void
br_mgf1_xor(void *data, size_t len,
 const br_hash_class *dig, const void *seed, size_t seed_len)
{
 unsigned char *buf;
 size_t u, hlen;
 uint32_t c;

 buf = data;
 hlen = br_digest_size(dig);
 for (u = 0, c = 0; u < len; u += hlen, c ++) {
  br_hash_compat_context hc;
  unsigned char tmp[64];
  size_t v;

  hc.vtable = dig;
  dig->init(&hc.vtable);
  dig->update(&hc.vtable, seed, seed_len);
  br_enc32be(tmp, c);
  dig->update(&hc.vtable, tmp, 4);
  dig->out(&hc.vtable, tmp);
  for (v = 0; v < hlen; v ++) {
   if ((u + v) >= len) {
    break;
   }
   buf[u + v] ^= tmp[v];
  }
 }
}
