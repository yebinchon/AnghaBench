
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int skey; int num_rounds; } ;
typedef TYPE_1__ br_aes_small_ctrcbc_keys ;


 int br_aes_small_encrypt (int ,int ,void*) ;
 int xorbuf (void*,unsigned char const*,int) ;

void
br_aes_small_ctrcbc_mac(const br_aes_small_ctrcbc_keys *ctx,
 void *cbcmac, const void *data, size_t len)
{
 const unsigned char *buf;

 buf = data;
 while (len > 0) {
  xorbuf(cbcmac, buf, 16);
  br_aes_small_encrypt(ctx->num_rounds, ctx->skey, cbcmac);
  buf += 16;
  len -= 16;
 }
}
