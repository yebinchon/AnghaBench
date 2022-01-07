
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_sec_ctx {int ctx_len; struct xfrm_sec_ctx* ctx_str; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct xfrm_sec_ctx* kmalloc (int,int ) ;
 int memcpy (struct xfrm_sec_ctx*,struct xfrm_sec_ctx*,int) ;

int selinux_xfrm_policy_clone(struct xfrm_sec_ctx *old_ctx,
         struct xfrm_sec_ctx **new_ctxp)
{
 struct xfrm_sec_ctx *new_ctx;

 if (old_ctx) {
  new_ctx = kmalloc(sizeof(*old_ctx) + old_ctx->ctx_len,
      GFP_KERNEL);
  if (!new_ctx)
   return -ENOMEM;

  memcpy(new_ctx, old_ctx, sizeof(*new_ctx));
  memcpy(new_ctx->ctx_str, old_ctx->ctx_str, new_ctx->ctx_len);
  *new_ctxp = new_ctx;
 }
 return 0;
}
