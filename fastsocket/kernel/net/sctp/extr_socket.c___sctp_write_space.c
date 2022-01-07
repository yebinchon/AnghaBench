
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {scalar_t__ fasync_list; } ;
struct sock {int sk_shutdown; int * sk_sleep; struct socket* sk_socket; } ;
struct TYPE_2__ {struct sock* sk; } ;
struct sctp_association {int wait; TYPE_1__ base; } ;


 int POLL_OUT ;
 int SEND_SHUTDOWN ;
 int SOCK_WAKE_SPACE ;
 scalar_t__ sctp_writeable (struct sock*) ;
 scalar_t__ sctp_wspace (struct sctp_association*) ;
 int sock_wake_async (struct socket*,int ,int ) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void __sctp_write_space(struct sctp_association *asoc)
{
 struct sock *sk = asoc->base.sk;
 struct socket *sock = sk->sk_socket;

 if ((sctp_wspace(asoc) > 0) && sock) {
  if (waitqueue_active(&asoc->wait))
   wake_up_interruptible(&asoc->wait);

  if (sctp_writeable(sk)) {
   if (sk->sk_sleep && waitqueue_active(sk->sk_sleep))
    wake_up_interruptible(sk->sk_sleep);





   if (sock->fasync_list &&
       !(sk->sk_shutdown & SEND_SHUTDOWN))
    sock_wake_async(sock,
      SOCK_WAKE_SPACE, POLL_OUT);
  }
 }
}
