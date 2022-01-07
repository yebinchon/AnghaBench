
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {struct sk_security_struct* sk_security; } ;
struct sk_security_struct {int sclass; int peer_sid; int sid; } ;


 int selinux_netlbl_sk_security_reset (struct sk_security_struct*) ;

__attribute__((used)) static void selinux_sk_clone_security(const struct sock *sk, struct sock *newsk)
{
 struct sk_security_struct *ssec = sk->sk_security;
 struct sk_security_struct *newssec = newsk->sk_security;

 newssec->sid = ssec->sid;
 newssec->peer_sid = ssec->peer_sid;
 newssec->sclass = ssec->sclass;

 selinux_netlbl_sk_security_reset(newssec);
}
