
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct sock {scalar_t__ sk_family; struct sk_security_struct* sk_security; } ;
struct sk_security_struct {int sid; } ;
struct sk_buff {scalar_t__ protocol; int secmark; int iif; } ;
struct TYPE_3__ {scalar_t__ family; int netif; } ;
struct TYPE_4__ {TYPE_1__ net; } ;
struct common_audit_data {TYPE_2__ u; } ;


 int COMMON_AUDIT_DATA_INIT (struct common_audit_data*,int ) ;
 int ETH_P_IP ;
 int NET ;
 int PACKET__RECV ;
 int PEER__RECV ;
 scalar_t__ PF_INET ;
 scalar_t__ PF_INET6 ;
 int SECCLASS_PACKET ;
 int SECCLASS_PEER ;
 int avc_has_perm (int ,int ,int ,int ,struct common_audit_data*) ;
 scalar_t__ htons (int ) ;
 scalar_t__ netlbl_enabled () ;
 int selinux_inet_sys_rcv_skb (int ,char*,scalar_t__,int ,struct common_audit_data*) ;
 int selinux_netlbl_err (struct sk_buff*,int,int ) ;
 int selinux_parse_skb (struct sk_buff*,struct common_audit_data*,char**,int,int *) ;
 int selinux_policycap_netpeer ;
 int selinux_secmark_enabled () ;
 int selinux_skb_peerlbl_sid (struct sk_buff*,scalar_t__,int *) ;
 int selinux_sock_rcv_skb_compat (struct sock*,struct sk_buff*,scalar_t__) ;
 scalar_t__ selinux_xfrm_enabled () ;

__attribute__((used)) static int selinux_socket_sock_rcv_skb(struct sock *sk, struct sk_buff *skb)
{
 int err;
 struct sk_security_struct *sksec = sk->sk_security;
 u16 family = sk->sk_family;
 u32 sk_sid = sksec->sid;
 struct common_audit_data ad;
 char *addrp;
 u8 secmark_active;
 u8 peerlbl_active;

 if (family != PF_INET && family != PF_INET6)
  return 0;


 if (family == PF_INET6 && skb->protocol == htons(ETH_P_IP))
  family = PF_INET;





 if (!selinux_policycap_netpeer)
  return selinux_sock_rcv_skb_compat(sk, skb, family);

 secmark_active = selinux_secmark_enabled();
 peerlbl_active = netlbl_enabled() || selinux_xfrm_enabled();
 if (!secmark_active && !peerlbl_active)
  return 0;

 COMMON_AUDIT_DATA_INIT(&ad, NET);
 ad.u.net.netif = skb->iif;
 ad.u.net.family = family;
 err = selinux_parse_skb(skb, &ad, &addrp, 1, ((void*)0));
 if (err)
  return err;

 if (peerlbl_active) {
  u32 peer_sid;

  err = selinux_skb_peerlbl_sid(skb, family, &peer_sid);
  if (err)
   return err;
  err = selinux_inet_sys_rcv_skb(skb->iif, addrp, family,
            peer_sid, &ad);
  if (err) {
   selinux_netlbl_err(skb, err, 0);
   return err;
  }
  err = avc_has_perm(sk_sid, peer_sid, SECCLASS_PEER,
       PEER__RECV, &ad);
  if (err) {
   selinux_netlbl_err(skb, err, 0);
   return err;
  }
 }

 if (secmark_active) {
  err = avc_has_perm(sk_sid, skb->secmark, SECCLASS_PACKET,
       PACKET__RECV, &ad);
  if (err)
   return err;
 }

 return err;
}
