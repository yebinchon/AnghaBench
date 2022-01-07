
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; } ;
struct inet_connection_sock {int icsk_accept_queue; } ;


 int EAGAIN ;
 int EINVAL ;
 int O_NONBLOCK ;
 scalar_t__ TCP_LISTEN ;
 scalar_t__ TCP_SYN_RECV ;
 int WARN_ON (int) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int inet_csk_wait_for_connect (struct sock*,long) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 scalar_t__ reqsk_queue_empty (int *) ;
 struct sock* reqsk_queue_get_child (int *,struct sock*) ;
 long sock_rcvtimeo (struct sock*,int) ;

struct sock *inet_csk_accept(struct sock *sk, int flags, int *err)
{
 struct inet_connection_sock *icsk = inet_csk(sk);
 struct sock *newsk;
 int error;

 lock_sock(sk);




 error = -EINVAL;
 if (sk->sk_state != TCP_LISTEN)
  goto out_err;


 if (reqsk_queue_empty(&icsk->icsk_accept_queue)) {
  long timeo = sock_rcvtimeo(sk, flags & O_NONBLOCK);


  error = -EAGAIN;
  if (!timeo)
   goto out_err;

  error = inet_csk_wait_for_connect(sk, timeo);
  if (error)
   goto out_err;
 }

 newsk = reqsk_queue_get_child(&icsk->icsk_accept_queue, sk);
 WARN_ON(newsk->sk_state == TCP_SYN_RECV);
out:
 release_sock(sk);
 return newsk;
out_err:
 newsk = ((void*)0);
 *err = error;
 goto out;
}
