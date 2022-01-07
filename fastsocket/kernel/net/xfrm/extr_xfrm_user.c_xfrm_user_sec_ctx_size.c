
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_user_sec_ctx {int dummy; } ;
struct xfrm_sec_ctx {scalar_t__ ctx_len; } ;



__attribute__((used)) static inline int xfrm_user_sec_ctx_size(struct xfrm_sec_ctx *xfrm_ctx)
{
 int len = 0;

 if (xfrm_ctx) {
  len += sizeof(struct xfrm_user_sec_ctx);
  len += xfrm_ctx->ctx_len;
 }
 return len;
}
