
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xfrm_state {struct xfrm_sec_ctx* security; } ;
struct xfrm_sec_ctx {int ctx_sid; } ;
struct sk_buff {struct sec_path* sp; } ;
struct sec_path {int len; struct xfrm_state** xvec; } ;
struct common_audit_data {int dummy; } ;


 int ASSOCIATION__RECVFROM ;
 int SECCLASS_ASSOCIATION ;
 int SECINITSID_UNLABELED ;
 int avc_has_perm (int ,int ,int ,int ,struct common_audit_data*) ;
 scalar_t__ selinux_authorizable_xfrm (struct xfrm_state*) ;

int selinux_xfrm_sock_rcv_skb(u32 isec_sid, struct sk_buff *skb,
    struct common_audit_data *ad)
{
 int i, rc = 0;
 struct sec_path *sp;
 u32 sel_sid = SECINITSID_UNLABELED;

 sp = skb->sp;

 if (sp) {
  for (i = 0; i < sp->len; i++) {
   struct xfrm_state *x = sp->xvec[i];

   if (x && selinux_authorizable_xfrm(x)) {
    struct xfrm_sec_ctx *ctx = x->security;
    sel_sid = ctx->ctx_sid;
    break;
   }
  }
 }
 rc = avc_has_perm(isec_sid, sel_sid, SECCLASS_ASSOCIATION,
     ASSOCIATION__RECVFROM, ad);

 return rc;
}
