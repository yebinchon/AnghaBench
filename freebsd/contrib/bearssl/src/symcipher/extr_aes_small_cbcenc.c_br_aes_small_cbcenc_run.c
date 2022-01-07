
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int skey; int num_rounds; } ;
typedef TYPE_1__ br_aes_small_cbcenc_keys ;


 int br_aes_small_encrypt (int ,int ,unsigned char*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;

void
br_aes_small_cbcenc_run(const br_aes_small_cbcenc_keys *ctx,
 void *iv, void *data, size_t len)
{
 unsigned char *buf, *ivbuf;

 ivbuf = iv;
 buf = data;
 while (len > 0) {
  int i;

  for (i = 0; i < 16; i ++) {
   buf[i] ^= ivbuf[i];
  }
  br_aes_small_encrypt(ctx->num_rounds, ctx->skey, buf);
  memcpy(ivbuf, buf, 16);
  buf += 16;
  len -= 16;
 }
}
