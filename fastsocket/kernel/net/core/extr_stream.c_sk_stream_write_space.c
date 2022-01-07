
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ fasync_list; int flags; } ;
struct sock {int sk_shutdown; scalar_t__ sk_sleep; struct socket* sk_socket; } ;


 int POLLOUT ;
 int POLLWRBAND ;
 int POLLWRNORM ;
 int POLL_OUT ;
 int SEND_SHUTDOWN ;
 int SOCK_NOSPACE ;
 int SOCK_WAKE_SPACE ;
 int clear_bit (int ,int *) ;
 scalar_t__ sk_stream_min_wspace (struct sock*) ;
 scalar_t__ sk_stream_wspace (struct sock*) ;
 int sock_wake_async (struct socket*,int ,int ) ;
 scalar_t__ waitqueue_active (scalar_t__) ;
 int wake_up_interruptible_poll (scalar_t__,int) ;

void sk_stream_write_space(struct sock *sk)
{
 struct socket *sock = sk->sk_socket;

 if (sk_stream_wspace(sk) >= sk_stream_min_wspace(sk) && sock) {
  clear_bit(SOCK_NOSPACE, &sock->flags);

  if (sk->sk_sleep && waitqueue_active(sk->sk_sleep))
   wake_up_interruptible_poll(sk->sk_sleep, POLLOUT |
      POLLWRNORM | POLLWRBAND);
  if (sock->fasync_list && !(sk->sk_shutdown & SEND_SHUTDOWN))
   sock_wake_async(sock, SOCK_WAKE_SPACE, POLL_OUT);
 }
}
