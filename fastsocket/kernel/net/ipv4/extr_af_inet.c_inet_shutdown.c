
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {scalar_t__ state; struct sock* sk; } ;
struct sock {int sk_state; int sk_shutdown; int (* sk_state_change ) (struct sock*) ;TYPE_1__* sk_prot; } ;
struct TYPE_2__ {int (* disconnect ) (struct sock*,int ) ;int (* shutdown ) (struct sock*,int) ;} ;


 int EINVAL ;
 int ENOTCONN ;
 int O_NONBLOCK ;
 int RCV_SHUTDOWN ;
 int SHUTDOWN_MASK ;
 scalar_t__ SS_CONNECTED ;
 scalar_t__ SS_CONNECTING ;
 void* SS_DISCONNECTING ;
 void* SS_UNCONNECTED ;
 int TCPF_CLOSE ;
 int TCPF_SYN_RECV ;
 int TCPF_SYN_SENT ;



 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int stub1 (struct sock*,int) ;
 int stub2 (struct sock*,int ) ;
 int stub3 (struct sock*) ;

int inet_shutdown(struct socket *sock, int how)
{
 struct sock *sk = sock->sk;
 int err = 0;




 how++;


 if ((how & ~SHUTDOWN_MASK) || !how)
  return -EINVAL;

 lock_sock(sk);
 if (sock->state == SS_CONNECTING) {
  if ((1 << sk->sk_state) &
      (TCPF_SYN_SENT | TCPF_SYN_RECV | TCPF_CLOSE))
   sock->state = SS_DISCONNECTING;
  else
   sock->state = SS_CONNECTED;
 }

 switch (sk->sk_state) {
 case 130:
  err = -ENOTCONN;


 default:
  sk->sk_shutdown |= how;
  if (sk->sk_prot->shutdown)
   sk->sk_prot->shutdown(sk, how);
  break;





 case 129:
  if (!(how & RCV_SHUTDOWN))
   break;

 case 128:
  err = sk->sk_prot->disconnect(sk, O_NONBLOCK);
  sock->state = err ? SS_DISCONNECTING : SS_UNCONNECTED;
  break;
 }


 sk->sk_state_change(sk);
 release_sock(sk);
 return err;
}
