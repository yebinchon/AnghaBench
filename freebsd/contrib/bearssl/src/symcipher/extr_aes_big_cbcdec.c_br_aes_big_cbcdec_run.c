
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int skey; int num_rounds; } ;
typedef TYPE_1__ br_aes_big_cbcdec_keys ;


 int br_aes_big_decrypt (int ,int ,unsigned char*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;

void
br_aes_big_cbcdec_run(const br_aes_big_cbcdec_keys *ctx,
 void *iv, void *data, size_t len)
{
 unsigned char *buf, *ivbuf;

 ivbuf = iv;
 buf = data;
 while (len > 0) {
  unsigned char tmp[16];
  int i;

  memcpy(tmp, buf, 16);
  br_aes_big_decrypt(ctx->num_rounds, ctx->skey, buf);
  for (i = 0; i < 16; i ++) {
   buf[i] ^= ivbuf[i];
  }
  memcpy(ivbuf, tmp, 16);
  buf += 16;
  len -= 16;
 }
}
