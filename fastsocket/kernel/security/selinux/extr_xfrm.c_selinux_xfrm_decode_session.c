
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;


 int SECSID_NULL ;
 int selinux_xfrm_skb_sid_ingress (struct sk_buff*,int *,int) ;

int selinux_xfrm_decode_session(struct sk_buff *skb, u32 *sid, int ckall)
{
 if (skb == ((void*)0)) {
  *sid = SECSID_NULL;
  return 0;
 }
 return selinux_xfrm_skb_sid_ingress(skb, sid, ckall);
}
