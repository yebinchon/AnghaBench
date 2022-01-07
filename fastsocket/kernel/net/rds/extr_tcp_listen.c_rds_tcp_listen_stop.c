
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int sk_callback_lock; int * sk_user_data; int * sk_data_ready; } ;


 int flush_workqueue (int ) ;
 int lock_sock (struct sock*) ;
 struct socket* rds_tcp_listen_sock ;
 int rds_wq ;
 int release_sock (struct sock*) ;
 int sock_release (struct socket*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void rds_tcp_listen_stop(void)
{
 struct socket *sock = rds_tcp_listen_sock;
 struct sock *sk;

 if (!sock)
  return;

 sk = sock->sk;


 lock_sock(sk);
 write_lock_bh(&sk->sk_callback_lock);
 if (sk->sk_user_data) {
  sk->sk_data_ready = sk->sk_user_data;
  sk->sk_user_data = ((void*)0);
 }
 write_unlock_bh(&sk->sk_callback_lock);
 release_sock(sk);


 flush_workqueue(rds_wq);
 sock_release(sock);
 rds_tcp_listen_sock = ((void*)0);
}
