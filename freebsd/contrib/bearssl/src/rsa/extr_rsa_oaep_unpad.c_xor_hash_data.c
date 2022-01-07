
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__ const* vtable; } ;
typedef TYPE_1__ br_hash_compat_context ;
struct TYPE_9__ {int (* out ) (TYPE_2__ const**,unsigned char*) ;int (* update ) (TYPE_2__ const**,void const*,size_t) ;int (* init ) (TYPE_2__ const**) ;} ;
typedef TYPE_2__ br_hash_class ;


 size_t br_digest_size (TYPE_2__ const*) ;
 int stub1 (TYPE_2__ const**) ;
 int stub2 (TYPE_2__ const**,void const*,size_t) ;
 int stub3 (TYPE_2__ const**,unsigned char*) ;

__attribute__((used)) static void
xor_hash_data(const br_hash_class *dig, void *dst, const void *src, size_t len)
{
 br_hash_compat_context hc;
 unsigned char tmp[64];
 unsigned char *buf;
 size_t u, hlen;

 hc.vtable = dig;
 dig->init(&hc.vtable);
 dig->update(&hc.vtable, src, len);
 dig->out(&hc.vtable, tmp);
 buf = dst;
 hlen = br_digest_size(dig);
 for (u = 0; u < hlen; u ++) {
  buf[u] ^= tmp[u];
 }
}
