
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {struct sk_security_struct* sk_security; } ;
struct sk_security_struct {int sclass; int sid; } ;


 int SECCLASS_TUN_SOCKET ;
 int current_sid () ;

__attribute__((used)) static void selinux_tun_dev_post_create(struct sock *sk)
{
 struct sk_security_struct *sksec = sk->sk_security;
 sksec->sid = current_sid();
 sksec->sclass = SECCLASS_TUN_SOCKET;
}
