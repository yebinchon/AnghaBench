
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct krb5_ctx {scalar_t__ enctype; } ;
struct crypto_blkcipher {int dummy; } ;
typedef int s32 ;


 scalar_t__ ENCTYPE_ARCFOUR_HMAC ;
 int krb5_encrypt (struct crypto_blkcipher*,unsigned char*,unsigned char*,unsigned char*,int) ;
 int krb5_make_rc4_seq_num (struct krb5_ctx*,int,int,unsigned char*,unsigned char*) ;

s32
krb5_make_seq_num(struct krb5_ctx *kctx,
  struct crypto_blkcipher *key,
  int direction,
  u32 seqnum,
  unsigned char *cksum, unsigned char *buf)
{
 unsigned char plain[8];

 if (kctx->enctype == ENCTYPE_ARCFOUR_HMAC)
  return krb5_make_rc4_seq_num(kctx, direction, seqnum,
          cksum, buf);

 plain[0] = (unsigned char) (seqnum & 0xff);
 plain[1] = (unsigned char) ((seqnum >> 8) & 0xff);
 plain[2] = (unsigned char) ((seqnum >> 16) & 0xff);
 plain[3] = (unsigned char) ((seqnum >> 24) & 0xff);

 plain[4] = direction;
 plain[5] = direction;
 plain[6] = direction;
 plain[7] = direction;

 return krb5_encrypt(key, cksum, plain, buf, 8);
}
