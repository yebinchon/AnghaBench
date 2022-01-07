
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {struct sk_security_struct* sk_security; } ;
struct sk_security_struct {int dummy; } ;


 int kfree (struct sk_security_struct*) ;
 int selinux_netlbl_sk_security_free (struct sk_security_struct*) ;

__attribute__((used)) static void sk_free_security(struct sock *sk)
{
 struct sk_security_struct *ssec = sk->sk_security;

 sk->sk_security = ((void*)0);
 selinux_netlbl_sk_security_free(ssec);
 kfree(ssec);
}
