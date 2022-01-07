
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_user_sec_ctx {int dummy; } ;
struct xfrm_sec_ctx {int dummy; } ;


 int BUG_ON (int) ;
 int atomic_inc (int *) ;
 int selinux_xfrm_refcount ;
 int selinux_xfrm_sec_ctx_alloc (struct xfrm_sec_ctx**,struct xfrm_user_sec_ctx*,int ) ;

int selinux_xfrm_policy_alloc(struct xfrm_sec_ctx **ctxp,
         struct xfrm_user_sec_ctx *uctx)
{
 int err;

 BUG_ON(!uctx);

 err = selinux_xfrm_sec_ctx_alloc(ctxp, uctx, 0);
 if (err == 0)
  atomic_inc(&selinux_xfrm_refcount);

 return err;
}
