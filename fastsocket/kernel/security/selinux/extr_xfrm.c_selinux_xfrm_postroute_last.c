
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct xfrm_state {int dummy; } ;
struct sk_buff {int dummy; } ;
struct dst_entry {struct xfrm_state* xfrm; struct dst_entry* child; } ;
struct common_audit_data {int dummy; } ;


 int ASSOCIATION__SENDTO ;



 int SECCLASS_ASSOCIATION ;
 int SECINITSID_UNLABELED ;
 int avc_has_perm (int ,int ,int ,int ,struct common_audit_data*) ;
 scalar_t__ selinux_authorizable_xfrm (struct xfrm_state*) ;
 struct dst_entry* skb_dst (struct sk_buff*) ;

int selinux_xfrm_postroute_last(u32 isec_sid, struct sk_buff *skb,
     struct common_audit_data *ad, u8 proto)
{
 struct dst_entry *dst;
 int rc = 0;

 dst = skb_dst(skb);

 if (dst) {
  struct dst_entry *dst_test;

  for (dst_test = dst; dst_test != ((void*)0);
       dst_test = dst_test->child) {
   struct xfrm_state *x = dst_test->xfrm;

   if (x && selinux_authorizable_xfrm(x))
    goto out;
  }
 }

 switch (proto) {
 case 130:
 case 128:
 case 129:





  goto out;
 default:
  break;
 }
 rc = avc_has_perm(isec_sid, SECINITSID_UNLABELED, SECCLASS_ASSOCIATION,
     ASSOCIATION__SENDTO, ad);
out:
 return rc;
}
