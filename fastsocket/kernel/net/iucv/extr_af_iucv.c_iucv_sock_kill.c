
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_socket; } ;


 int SOCK_DEAD ;
 int SOCK_ZAPPED ;
 int iucv_sk_list ;
 int iucv_sock_unlink (int *,struct sock*) ;
 int sock_flag (struct sock*,int ) ;
 int sock_put (struct sock*) ;
 int sock_set_flag (struct sock*,int ) ;

__attribute__((used)) static void iucv_sock_kill(struct sock *sk)
{
 if (!sock_flag(sk, SOCK_ZAPPED) || sk->sk_socket)
  return;

 iucv_sock_unlink(&iucv_sk_list, sk);
 sock_set_flag(sk, SOCK_DEAD);
 sock_put(sk);
}
