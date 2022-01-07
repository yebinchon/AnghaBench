
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct xfrm_sec_ctx {int ctx_sid; } ;


 int ASSOCIATION__POLMATCH ;
 int EACCES ;
 int EINVAL ;
 int ESRCH ;
 int SECCLASS_ASSOCIATION ;
 int avc_has_perm (int ,int ,int ,int ,int *) ;
 int selinux_authorizable_ctx (struct xfrm_sec_ctx*) ;

int selinux_xfrm_policy_lookup(struct xfrm_sec_ctx *ctx, u32 fl_secid, u8 dir)
{
 int rc;
 u32 sel_sid;


 if (ctx) {
  if (!selinux_authorizable_ctx(ctx))
   return -EINVAL;

  sel_sid = ctx->ctx_sid;
 } else





  return 0;

 rc = avc_has_perm(fl_secid, sel_sid, SECCLASS_ASSOCIATION,
     ASSOCIATION__POLMATCH,
     ((void*)0));

 if (rc == -EACCES)
  return -ESRCH;

 return rc;
}
