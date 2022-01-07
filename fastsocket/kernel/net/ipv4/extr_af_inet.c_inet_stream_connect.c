
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int state; struct sock* sk; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct sock {int sk_state; TYPE_1__* sk_prot; } ;
struct TYPE_2__ {int (* disconnect ) (struct sock*,int) ;int (* connect ) (struct sock*,struct sockaddr*,int) ;} ;


 scalar_t__ AF_UNSPEC ;
 int EALREADY ;
 int ECONNABORTED ;
 int EINPROGRESS ;
 int EINVAL ;
 int EISCONN ;
 int O_NONBLOCK ;


 int SS_DISCONNECTING ;

 int TCPF_SYN_RECV ;
 int TCPF_SYN_SENT ;
 int TCP_CLOSE ;
 int current ;
 int inet_wait_for_connect (struct sock*,long) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 scalar_t__ signal_pending (int ) ;
 scalar_t__ sock_error (struct sock*) ;
 int sock_intr_errno (long) ;
 long sock_sndtimeo (struct sock*,int) ;
 int stub1 (struct sock*,int) ;
 int stub2 (struct sock*,struct sockaddr*,int) ;
 int stub3 (struct sock*,int) ;

int inet_stream_connect(struct socket *sock, struct sockaddr *uaddr,
   int addr_len, int flags)
{
 struct sock *sk = sock->sk;
 int err;
 long timeo;

 lock_sock(sk);

 if (uaddr->sa_family == AF_UNSPEC) {
  err = sk->sk_prot->disconnect(sk, flags);
  sock->state = err ? SS_DISCONNECTING : 128;
  goto out;
 }

 switch (sock->state) {
 default:
  err = -EINVAL;
  goto out;
 case 130:
  err = -EISCONN;
  goto out;
 case 129:
  err = -EALREADY;

  break;
 case 128:
  err = -EISCONN;
  if (sk->sk_state != TCP_CLOSE)
   goto out;

  err = sk->sk_prot->connect(sk, uaddr, addr_len);
  if (err < 0)
   goto out;

  sock->state = 129;





  err = -EINPROGRESS;
  break;
 }

 timeo = sock_sndtimeo(sk, flags & O_NONBLOCK);

 if ((1 << sk->sk_state) & (TCPF_SYN_SENT | TCPF_SYN_RECV)) {

  if (!timeo || !inet_wait_for_connect(sk, timeo))
   goto out;

  err = sock_intr_errno(timeo);
  if (signal_pending(current))
   goto out;
 }




 if (sk->sk_state == TCP_CLOSE)
  goto sock_error;






 sock->state = 130;
 err = 0;
out:
 release_sock(sk);
 return err;

sock_error:
 err = sock_error(sk) ? : -ECONNABORTED;
 sock->state = 128;
 if (sk->sk_prot->disconnect(sk, flags))
  sock->state = SS_DISCONNECTING;
 goto out;
}
