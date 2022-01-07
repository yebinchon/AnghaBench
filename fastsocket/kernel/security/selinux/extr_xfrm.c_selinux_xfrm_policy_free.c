
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_sec_ctx {int dummy; } ;


 int kfree (struct xfrm_sec_ctx*) ;

void selinux_xfrm_policy_free(struct xfrm_sec_ctx *ctx)
{
 kfree(ctx);
}
