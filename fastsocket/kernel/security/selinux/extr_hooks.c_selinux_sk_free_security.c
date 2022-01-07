
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int sk_free_security (struct sock*) ;

__attribute__((used)) static void selinux_sk_free_security(struct sock *sk)
{
 sk_free_security(sk);
}
