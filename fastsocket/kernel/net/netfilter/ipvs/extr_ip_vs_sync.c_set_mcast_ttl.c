
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sock {int dummy; } ;
struct inet_sock {int mc_ttl; } ;


 struct inet_sock* inet_sk (struct sock*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;

__attribute__((used)) static void set_mcast_ttl(struct sock *sk, u_char ttl)
{
 struct inet_sock *inet = inet_sk(sk);


 lock_sock(sk);
 inet->mc_ttl = ttl;
 release_sock(sk);
}
