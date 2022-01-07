
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {struct sk_security_struct* sk_security; } ;
struct sk_security_struct {struct netlbl_lsm_secattr* nlbl_secattr; int sid; } ;
struct netlbl_lsm_secattr {int dummy; } ;


 int GFP_ATOMIC ;
 struct netlbl_lsm_secattr* netlbl_secattr_alloc (int ) ;
 int netlbl_secattr_free (struct netlbl_lsm_secattr*) ;
 int security_netlbl_sid_to_secattr (int ,struct netlbl_lsm_secattr*) ;

__attribute__((used)) static struct netlbl_lsm_secattr *selinux_netlbl_sock_genattr(struct sock *sk)
{
 int rc;
 struct sk_security_struct *sksec = sk->sk_security;
 struct netlbl_lsm_secattr *secattr;

 if (sksec->nlbl_secattr != ((void*)0))
  return sksec->nlbl_secattr;

 secattr = netlbl_secattr_alloc(GFP_ATOMIC);
 if (secattr == ((void*)0))
  return ((void*)0);
 rc = security_netlbl_sid_to_secattr(sksec->sid, secattr);
 if (rc != 0) {
  netlbl_secattr_free(secattr);
  return ((void*)0);
 }
 sksec->nlbl_secattr = secattr;

 return secattr;
}
