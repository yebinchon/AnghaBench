
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_sleep; } ;
struct sctp_endpoint {int asocs; } ;
struct TYPE_2__ {struct sctp_endpoint* ep; } ;


 int DEFINE_WAIT (int ) ;
 int EAGAIN ;
 int EINVAL ;
 int LISTENING ;
 int TASK_INTERRUPTIBLE ;
 int current ;
 int finish_wait (int ,int *) ;
 scalar_t__ list_empty (int *) ;
 int prepare_to_wait_exclusive (int ,int *,int ) ;
 long schedule_timeout (long) ;
 int sctp_lock_sock (struct sock*) ;
 int sctp_release_sock (struct sock*) ;
 TYPE_1__* sctp_sk (struct sock*) ;
 int sctp_sstate (struct sock*,int ) ;
 scalar_t__ signal_pending (int ) ;
 int sock_intr_errno (long) ;
 int wait ;

__attribute__((used)) static int sctp_wait_for_accept(struct sock *sk, long timeo)
{
 struct sctp_endpoint *ep;
 int err = 0;
 DEFINE_WAIT(wait);

 ep = sctp_sk(sk)->ep;


 for (;;) {
  prepare_to_wait_exclusive(sk->sk_sleep, &wait,
       TASK_INTERRUPTIBLE);

  if (list_empty(&ep->asocs)) {
   sctp_release_sock(sk);
   timeo = schedule_timeout(timeo);
   sctp_lock_sock(sk);
  }

  err = -EINVAL;
  if (!sctp_sstate(sk, LISTENING))
   break;

  err = 0;
  if (!list_empty(&ep->asocs))
   break;

  err = sock_intr_errno(timeo);
  if (signal_pending(current))
   break;

  err = -EAGAIN;
  if (!timeo)
   break;
 }

 finish_wait(sk->sk_sleep, &wait);

 return err;
}
