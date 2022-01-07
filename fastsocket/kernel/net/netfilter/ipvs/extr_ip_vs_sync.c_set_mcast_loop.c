
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
struct sock {int dummy; } ;
struct inet_sock {int mc_loop; } ;


 struct inet_sock* inet_sk (struct sock*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;

__attribute__((used)) static void set_mcast_loop(struct sock *sk, u_char loop)
{
 struct inet_sock *inet = inet_sk(sk);


 lock_sock(sk);
 inet->mc_loop = loop ? 1 : 0;
 release_sock(sk);
}
