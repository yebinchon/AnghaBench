
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct krb5_ctx {TYPE_1__* gk5e; } ;
struct crypto_blkcipher {int dummy; } ;
struct TYPE_2__ {int keylength; } ;


 int CRYPTO_ALG_ASYNC ;
 scalar_t__ IS_ERR (struct crypto_blkcipher*) ;
 struct crypto_blkcipher* crypto_alloc_blkcipher (char const*,int ,int ) ;
 scalar_t__ crypto_blkcipher_setkey (struct crypto_blkcipher*,int *,int ) ;
 int crypto_free_blkcipher (struct crypto_blkcipher*) ;
 int dprintk (char*,char const*) ;

struct crypto_blkcipher *
context_v2_alloc_cipher(struct krb5_ctx *ctx, const char *cname, u8 *key)
{
 struct crypto_blkcipher *cp;

 cp = crypto_alloc_blkcipher(cname, 0, CRYPTO_ALG_ASYNC);
 if (IS_ERR(cp)) {
  dprintk("gss_kerberos_mech: unable to initialize "
   "crypto algorithm %s\n", cname);
  return ((void*)0);
 }
 if (crypto_blkcipher_setkey(cp, key, ctx->gk5e->keylength)) {
  dprintk("gss_kerberos_mech: error setting key for "
   "crypto algorithm %s\n", cname);
  crypto_free_blkcipher(cp);
  return ((void*)0);
 }
 return cp;
}
