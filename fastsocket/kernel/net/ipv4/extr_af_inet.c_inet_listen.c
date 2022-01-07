
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ state; scalar_t__ type; struct sock* sk; } ;
struct sock {unsigned char sk_state; int sk_max_ack_backlog; } ;


 int EINVAL ;
 scalar_t__ SOCK_STREAM ;
 scalar_t__ SS_UNCONNECTED ;
 int TCPF_CLOSE ;
 int TCPF_LISTEN ;
 unsigned char TCP_LISTEN ;
 int inet_csk_listen_start (struct sock*,int) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;

int inet_listen(struct socket *sock, int backlog)
{
 struct sock *sk = sock->sk;
 unsigned char old_state;
 int err;

 lock_sock(sk);

 err = -EINVAL;
 if (sock->state != SS_UNCONNECTED || sock->type != SOCK_STREAM)
  goto out;

 old_state = sk->sk_state;
 if (!((1 << old_state) & (TCPF_CLOSE | TCPF_LISTEN)))
  goto out;




 if (old_state != TCP_LISTEN) {
  err = inet_csk_listen_start(sk, backlog);
  if (err)
   goto out;
 }
 sk->sk_max_ack_backlog = backlog;
 err = 0;

out:
 release_sock(sk);
 return err;
}
