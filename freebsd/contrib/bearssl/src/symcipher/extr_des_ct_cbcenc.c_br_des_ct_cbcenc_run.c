
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int num_rounds; int skey; } ;
typedef TYPE_1__ br_des_ct_cbcenc_keys ;


 int br_des_ct_process_block (int ,int *,unsigned char*) ;
 int br_des_ct_skey_expand (int *,int ,int ) ;
 int memcpy (unsigned char*,unsigned char*,int) ;

void
br_des_ct_cbcenc_run(const br_des_ct_cbcenc_keys *ctx,
 void *iv, void *data, size_t len)
{
 unsigned char *buf, *ivbuf;
 uint32_t sk_exp[288];

 br_des_ct_skey_expand(sk_exp, ctx->num_rounds, ctx->skey);
 ivbuf = iv;
 buf = data;
 while (len > 0) {
  int i;

  for (i = 0; i < 8; i ++) {
   buf[i] ^= ivbuf[i];
  }
  br_des_ct_process_block(ctx->num_rounds, sk_exp, buf);
  memcpy(ivbuf, buf, 8);
  buf += 8;
  len -= 8;
 }
}
