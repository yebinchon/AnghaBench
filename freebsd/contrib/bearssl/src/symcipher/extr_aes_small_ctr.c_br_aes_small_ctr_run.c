
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int skey; int num_rounds; } ;
typedef TYPE_1__ br_aes_small_ctr_keys ;


 int br_aes_small_encrypt (int ,int ,unsigned char*) ;
 int br_enc32be (unsigned char*,int ) ;
 int memcpy (unsigned char*,void const*,int) ;
 int xorbuf (unsigned char*,unsigned char*,int) ;

uint32_t
br_aes_small_ctr_run(const br_aes_small_ctr_keys *ctx,
 const void *iv, uint32_t cc, void *data, size_t len)
{
 unsigned char *buf;

 buf = data;
 while (len > 0) {
  unsigned char tmp[16];

  memcpy(tmp, iv, 12);
  br_enc32be(tmp + 12, cc ++);
  br_aes_small_encrypt(ctx->num_rounds, ctx->skey, tmp);
  if (len <= 16) {
   xorbuf(buf, tmp, len);
   break;
  }
  xorbuf(buf, tmp, 16);
  buf += 16;
  len -= 16;
 }
 return cc;
}
