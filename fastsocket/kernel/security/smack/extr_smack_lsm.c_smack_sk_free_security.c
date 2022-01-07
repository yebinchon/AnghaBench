
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_security; } ;


 int kfree (int ) ;

__attribute__((used)) static void smack_sk_free_security(struct sock *sk)
{
 kfree(sk->sk_security);
}
