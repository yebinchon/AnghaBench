
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int ECONNRESET ;
 int __l2cap_sock_close (struct sock*,int ) ;
 int l2cap_sock_clear_timer (struct sock*) ;
 int l2cap_sock_kill (struct sock*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;

__attribute__((used)) static void l2cap_sock_close(struct sock *sk)
{
 l2cap_sock_clear_timer(sk);
 lock_sock(sk);
 __l2cap_sock_close(sk, ECONNRESET);
 release_sock(sk);
 l2cap_sock_kill(sk);
}
