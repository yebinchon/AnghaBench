
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sock {struct sk_security_struct* sk_security; } ;
struct sk_security_struct {int sid; } ;
struct sk_buff {int secmark; int iif; } ;
struct TYPE_3__ {int family; int netif; } ;
struct TYPE_4__ {TYPE_1__ net; } ;
struct common_audit_data {TYPE_2__ u; } ;


 int COMMON_AUDIT_DATA_INIT (struct common_audit_data*,int ) ;
 int NET ;
 int PACKET__RECV ;
 int PEER__RECV ;
 int SECCLASS_PACKET ;
 int SECCLASS_PEER ;
 int avc_has_perm (int ,int ,int ,int ,struct common_audit_data*) ;
 int selinux_netlbl_err (struct sk_buff*,int,int ) ;
 int selinux_netlbl_sock_rcv_skb (struct sk_security_struct*,struct sk_buff*,int ,struct common_audit_data*) ;
 int selinux_parse_skb (struct sk_buff*,struct common_audit_data*,char**,int,int *) ;
 scalar_t__ selinux_policycap_netpeer ;
 scalar_t__ selinux_secmark_enabled () ;
 int selinux_skb_peerlbl_sid (struct sk_buff*,int ,int *) ;
 int selinux_xfrm_sock_rcv_skb (int ,struct sk_buff*,struct common_audit_data*) ;

__attribute__((used)) static int selinux_sock_rcv_skb_compat(struct sock *sk, struct sk_buff *skb,
           u16 family)
{
 int err = 0;
 struct sk_security_struct *sksec = sk->sk_security;
 u32 peer_sid;
 u32 sk_sid = sksec->sid;
 struct common_audit_data ad;
 char *addrp;

 COMMON_AUDIT_DATA_INIT(&ad, NET);
 ad.u.net.netif = skb->iif;
 ad.u.net.family = family;
 err = selinux_parse_skb(skb, &ad, &addrp, 1, ((void*)0));
 if (err)
  return err;

 if (selinux_secmark_enabled()) {
  err = avc_has_perm(sk_sid, skb->secmark, SECCLASS_PACKET,
       PACKET__RECV, &ad);
  if (err)
   return err;
 }

 if (selinux_policycap_netpeer) {
  err = selinux_skb_peerlbl_sid(skb, family, &peer_sid);
  if (err)
   return err;
  err = avc_has_perm(sk_sid, peer_sid,
       SECCLASS_PEER, PEER__RECV, &ad);
  if (err)
   selinux_netlbl_err(skb, err, 0);
 } else {
  err = selinux_netlbl_sock_rcv_skb(sksec, skb, family, &ad);
  if (err)
   return err;
  err = selinux_xfrm_sock_rcv_skb(sksec->sid, skb, &ad);
 }

 return err;
}
