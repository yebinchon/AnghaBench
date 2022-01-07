
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sock {struct sk_security_struct* sk_security; } ;
struct sk_security_struct {scalar_t__ nlbl_state; struct netlbl_lsm_secattr* nlbl_secattr; } ;
struct sk_buff {struct sock* sk; } ;
struct netlbl_lsm_secattr {int dummy; } ;


 scalar_t__ NLBL_REQSKB ;
 int netlbl_secattr_destroy (struct netlbl_lsm_secattr*) ;
 int netlbl_secattr_init (struct netlbl_lsm_secattr*) ;
 int netlbl_skbuff_setattr (struct sk_buff*,int ,struct netlbl_lsm_secattr*) ;
 int security_netlbl_sid_to_secattr (int ,struct netlbl_lsm_secattr*) ;

int selinux_netlbl_skbuff_setsid(struct sk_buff *skb,
     u16 family,
     u32 sid)
{
 int rc;
 struct netlbl_lsm_secattr secattr_storage;
 struct netlbl_lsm_secattr *secattr = ((void*)0);
 struct sock *sk;



 sk = skb->sk;
 if (sk != ((void*)0)) {
  struct sk_security_struct *sksec = sk->sk_security;
  if (sksec->nlbl_state != NLBL_REQSKB)
   return 0;
  secattr = sksec->nlbl_secattr;
 }
 if (secattr == ((void*)0)) {
  secattr = &secattr_storage;
  netlbl_secattr_init(secattr);
  rc = security_netlbl_sid_to_secattr(sid, secattr);
  if (rc != 0)
   goto skbuff_setsid_return;
 }

 rc = netlbl_skbuff_setattr(skb, family, secattr);

skbuff_setsid_return:
 if (secattr == &secattr_storage)
  netlbl_secattr_destroy(secattr);
 return rc;
}
