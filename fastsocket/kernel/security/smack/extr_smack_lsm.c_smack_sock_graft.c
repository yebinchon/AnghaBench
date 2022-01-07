
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_smack {int smk_out; int smk_in; } ;
struct socket {int dummy; } ;
struct sock {scalar_t__ sk_family; struct socket_smack* sk_security; } ;


 scalar_t__ PF_INET ;
 scalar_t__ PF_INET6 ;
 int current_security () ;

__attribute__((used)) static void smack_sock_graft(struct sock *sk, struct socket *parent)
{
 struct socket_smack *ssp;

 if (sk == ((void*)0) ||
     (sk->sk_family != PF_INET && sk->sk_family != PF_INET6))
  return;

 ssp = sk->sk_security;
 ssp->smk_in = ssp->smk_out = current_security();

}
