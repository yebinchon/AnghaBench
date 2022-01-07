
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_2__ {int data; } ;
struct krb5_ctx {int initiate; int endtime; int seq_send; TYPE_1__ mech_used; int enc; int seq; int * gk5e; int enctype; } ;


 int EFAULT ;
 int EINVAL ;
 int ENCTYPE_DES_CBC_RAW ;
 int ENOSYS ;
 void* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (void const*) ;
 int PTR_ERR (void const*) ;
 int SEAL_ALG_DES ;
 int SGN_ALG_DES_MAC_MD5 ;
 int crypto_free_blkcipher (int ) ;
 int * get_gss_krb5_enctype (int ) ;
 void* get_key (void const*,void const*,struct krb5_ctx*,int *) ;
 int kfree (int ) ;
 void* simple_get_bytes (void const*,void const*,int*,int) ;
 void* simple_get_netobj (void const*,void const*,TYPE_1__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
gss_import_v1_context(const void *p, const void *end, struct krb5_ctx *ctx)
{
 int tmp;

 p = simple_get_bytes(p, end, &ctx->initiate, sizeof(ctx->initiate));
 if (IS_ERR(p))
  goto out_err;


 ctx->enctype = ENCTYPE_DES_CBC_RAW;

 ctx->gk5e = get_gss_krb5_enctype(ctx->enctype);
 if (ctx->gk5e == ((void*)0)) {
  p = ERR_PTR(-EINVAL);
  goto out_err;
 }





 if (unlikely(p + 20 > end || p + 20 < p)) {
  p = ERR_PTR(-EFAULT);
  goto out_err;
 }
 p += 20;
 p = simple_get_bytes(p, end, &tmp, sizeof(tmp));
 if (IS_ERR(p))
  goto out_err;
 if (tmp != SGN_ALG_DES_MAC_MD5) {
  p = ERR_PTR(-ENOSYS);
  goto out_err;
 }
 p = simple_get_bytes(p, end, &tmp, sizeof(tmp));
 if (IS_ERR(p))
  goto out_err;
 if (tmp != SEAL_ALG_DES) {
  p = ERR_PTR(-ENOSYS);
  goto out_err;
 }
 p = simple_get_bytes(p, end, &ctx->endtime, sizeof(ctx->endtime));
 if (IS_ERR(p))
  goto out_err;
 p = simple_get_bytes(p, end, &ctx->seq_send, sizeof(ctx->seq_send));
 if (IS_ERR(p))
  goto out_err;
 p = simple_get_netobj(p, end, &ctx->mech_used);
 if (IS_ERR(p))
  goto out_err;
 p = get_key(p, end, ctx, &ctx->enc);
 if (IS_ERR(p))
  goto out_err_free_mech;
 p = get_key(p, end, ctx, &ctx->seq);
 if (IS_ERR(p))
  goto out_err_free_key1;
 if (p != end) {
  p = ERR_PTR(-EFAULT);
  goto out_err_free_key2;
 }

 return 0;

out_err_free_key2:
 crypto_free_blkcipher(ctx->seq);
out_err_free_key1:
 crypto_free_blkcipher(ctx->enc);
out_err_free_mech:
 kfree(ctx->mech_used.data);
out_err:
 return PTR_ERR(p);
}
