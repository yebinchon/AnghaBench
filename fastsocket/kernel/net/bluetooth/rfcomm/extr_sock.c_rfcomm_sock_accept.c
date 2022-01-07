
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int state; struct sock* sk; } ;
struct sock {scalar_t__ sk_state; scalar_t__ sk_type; int sk_sleep; } ;


 int BT_DBG (char*,struct sock*,...) ;
 scalar_t__ BT_LISTEN ;
 int DECLARE_WAITQUEUE (int ,int ) ;
 int EAGAIN ;
 int EBADFD ;
 int EINVAL ;
 int O_NONBLOCK ;
 scalar_t__ SOCK_STREAM ;
 int SS_CONNECTED ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int add_wait_queue_exclusive (int ,int *) ;
 struct sock* bt_accept_dequeue (struct sock*,struct socket*) ;
 int current ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int remove_wait_queue (int ,int *) ;
 long schedule_timeout (long) ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 int sock_intr_errno (long) ;
 long sock_rcvtimeo (struct sock*,int) ;
 int wait ;

__attribute__((used)) static int rfcomm_sock_accept(struct socket *sock, struct socket *newsock, int flags)
{
 DECLARE_WAITQUEUE(wait, current);
 struct sock *sk = sock->sk, *nsk;
 long timeo;
 int err = 0;

 lock_sock(sk);

 if (sk->sk_state != BT_LISTEN) {
  err = -EBADFD;
  goto done;
 }

 if (sk->sk_type != SOCK_STREAM) {
  err = -EINVAL;
  goto done;
 }

 timeo = sock_rcvtimeo(sk, flags & O_NONBLOCK);

 BT_DBG("sk %p timeo %ld", sk, timeo);


 add_wait_queue_exclusive(sk->sk_sleep, &wait);
 while (!(nsk = bt_accept_dequeue(sk, newsock))) {
  set_current_state(TASK_INTERRUPTIBLE);
  if (!timeo) {
   err = -EAGAIN;
   break;
  }

  release_sock(sk);
  timeo = schedule_timeout(timeo);
  lock_sock(sk);

  if (sk->sk_state != BT_LISTEN) {
   err = -EBADFD;
   break;
  }

  if (signal_pending(current)) {
   err = sock_intr_errno(timeo);
   break;
  }
 }
 set_current_state(TASK_RUNNING);
 remove_wait_queue(sk->sk_sleep, &wait);

 if (err)
  goto done;

 newsock->state = SS_CONNECTED;

 BT_DBG("new socket %p", nsk);

done:
 release_sock(sk);
 return err;
}
