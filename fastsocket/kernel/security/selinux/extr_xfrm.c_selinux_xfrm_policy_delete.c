
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_sec_ctx {int ctx_sid; } ;
struct task_security_struct {int sid; } ;


 int ASSOCIATION__SETCONTEXT ;
 int SECCLASS_ASSOCIATION ;
 int atomic_dec (int *) ;
 int avc_has_perm (int ,int ,int ,int ,int *) ;
 struct task_security_struct* current_security () ;
 int selinux_xfrm_refcount ;

int selinux_xfrm_policy_delete(struct xfrm_sec_ctx *ctx)
{
 const struct task_security_struct *tsec = current_security();
 int rc = 0;

 if (ctx) {
  rc = avc_has_perm(tsec->sid, ctx->ctx_sid,
      SECCLASS_ASSOCIATION,
      ASSOCIATION__SETCONTEXT, ((void*)0));
  if (rc == 0)
   atomic_dec(&selinux_xfrm_refcount);
 }

 return rc;
}
