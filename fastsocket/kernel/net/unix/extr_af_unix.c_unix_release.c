
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;


 int unix_release_sock (struct sock*,int ) ;

__attribute__((used)) static int unix_release(struct socket *sock)
{
 struct sock *sk = sock->sk;

 if (!sk)
  return 0;

 sock->sk = ((void*)0);

 return unix_release_sock(sk, 0);
}
