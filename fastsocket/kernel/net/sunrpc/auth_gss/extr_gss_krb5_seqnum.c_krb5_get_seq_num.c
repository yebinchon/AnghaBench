
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u32 ;
struct krb5_ctx {scalar_t__ enctype; struct crypto_blkcipher* seq; } ;
struct crypto_blkcipher {int dummy; } ;
typedef int s32 ;


 scalar_t__ ENCTYPE_ARCFOUR_HMAC ;
 int KG_BAD_SEQ ;
 int dprintk (char*) ;
 int krb5_decrypt (struct crypto_blkcipher*,unsigned char*,unsigned char*,unsigned char*,int) ;
 int krb5_get_rc4_seq_num (struct krb5_ctx*,unsigned char*,unsigned char*,int*,unsigned char*) ;

s32
krb5_get_seq_num(struct krb5_ctx *kctx,
        unsigned char *cksum,
        unsigned char *buf,
        int *direction, u32 *seqnum)
{
 s32 code;
 unsigned char plain[8];
 struct crypto_blkcipher *key = kctx->seq;

 dprintk("RPC:       krb5_get_seq_num:\n");

 if (kctx->enctype == ENCTYPE_ARCFOUR_HMAC)
  return krb5_get_rc4_seq_num(kctx, cksum, buf,
         direction, seqnum);

 if ((code = krb5_decrypt(key, cksum, buf, plain, 8)))
  return code;

 if ((plain[4] != plain[5]) || (plain[4] != plain[6])
       || (plain[4] != plain[7]))
  return (s32)KG_BAD_SEQ;

 *direction = plain[4];

 *seqnum = ((plain[0]) |
     (plain[1] << 8) | (plain[2] << 16) | (plain[3] << 24));

 return (0);
}
