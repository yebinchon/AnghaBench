
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xfrm_user_sec_ctx {int dummy; } ;
struct xfrm_state {int security; } ;


 int BUG_ON (int) ;
 int atomic_inc (int *) ;
 int selinux_xfrm_refcount ;
 int selinux_xfrm_sec_ctx_alloc (int *,struct xfrm_user_sec_ctx*,int ) ;

int selinux_xfrm_state_alloc(struct xfrm_state *x, struct xfrm_user_sec_ctx *uctx,
  u32 secid)
{
 int err;

 BUG_ON(!x);

 err = selinux_xfrm_sec_ctx_alloc(&x->security, uctx, secid);
 if (err == 0)
  atomic_inc(&selinux_xfrm_refcount);
 return err;
}
