
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state {struct xfrm_sec_ctx* security; } ;
struct xfrm_sec_ctx {int dummy; } ;


 int kfree (struct xfrm_sec_ctx*) ;

void selinux_xfrm_state_free(struct xfrm_state *x)
{
 struct xfrm_sec_ctx *ctx = x->security;
 kfree(ctx);
}
