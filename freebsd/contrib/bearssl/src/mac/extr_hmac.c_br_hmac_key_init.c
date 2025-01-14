
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int kso; int ksi; TYPE_3__ const* dig_vtable; } ;
typedef TYPE_1__ br_hmac_key_context ;
struct TYPE_13__ {TYPE_3__ const* vtable; } ;
typedef TYPE_2__ br_hash_compat_context ;
struct TYPE_14__ {int (* out ) (TYPE_3__ const**,unsigned char*) ;int (* update ) (TYPE_3__ const**,void const*,size_t) ;int (* init ) (TYPE_3__ const**) ;} ;
typedef TYPE_3__ br_hash_class ;


 size_t block_size (TYPE_3__ const*) ;
 size_t br_digest_size (TYPE_3__ const*) ;
 int process_key (TYPE_3__ const**,int ,void const*,size_t,int) ;
 int stub1 (TYPE_3__ const**) ;
 int stub2 (TYPE_3__ const**,void const*,size_t) ;
 int stub3 (TYPE_3__ const**,unsigned char*) ;

void
br_hmac_key_init(br_hmac_key_context *kc,
 const br_hash_class *dig, const void *key, size_t key_len)
{
 br_hash_compat_context hc;
 unsigned char kbuf[64];

 kc->dig_vtable = dig;
 hc.vtable = dig;
 if (key_len > block_size(dig)) {
  dig->init(&hc.vtable);
  dig->update(&hc.vtable, key, key_len);
  dig->out(&hc.vtable, kbuf);
  key = kbuf;
  key_len = br_digest_size(dig);
 }
 process_key(&hc.vtable, kc->ksi, key, key_len, 0x36);
 process_key(&hc.vtable, kc->kso, key, key_len, 0x5C);
}
