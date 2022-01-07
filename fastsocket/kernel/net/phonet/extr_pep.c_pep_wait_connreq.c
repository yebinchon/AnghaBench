
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct sock {scalar_t__ sk_state; TYPE_1__* sk_socket; } ;
struct pep_sock {int ackq; } ;
struct TYPE_2__ {int wait; } ;


 int DEFINE_WAIT (int ) ;
 int EINVAL ;
 int EWOULDBLOCK ;
 int TASK_INTERRUPTIBLE ;
 scalar_t__ TCP_LISTEN ;
 struct task_struct* current ;
 int finish_wait (int *,int *) ;
 int hlist_empty (int *) ;
 int lock_sock (struct sock*) ;
 struct pep_sock* pep_sk (struct sock*) ;
 int prepare_to_wait_exclusive (int *,int *,int ) ;
 int release_sock (struct sock*) ;
 long schedule_timeout (long) ;
 scalar_t__ signal_pending (struct task_struct*) ;
 int sock_intr_errno (long) ;
 long sock_rcvtimeo (struct sock*,int) ;
 int wait ;

__attribute__((used)) static int pep_wait_connreq(struct sock *sk, int noblock)
{
 struct task_struct *tsk = current;
 struct pep_sock *pn = pep_sk(sk);
 long timeo = sock_rcvtimeo(sk, noblock);

 for (;;) {
  DEFINE_WAIT(wait);

  if (sk->sk_state != TCP_LISTEN)
   return -EINVAL;
  if (!hlist_empty(&pn->ackq))
   break;
  if (!timeo)
   return -EWOULDBLOCK;
  if (signal_pending(tsk))
   return sock_intr_errno(timeo);

  prepare_to_wait_exclusive(&sk->sk_socket->wait, &wait,
      TASK_INTERRUPTIBLE);
  release_sock(sk);
  timeo = schedule_timeout(timeo);
  lock_sock(sk);
  finish_wait(&sk->sk_socket->wait, &wait);
 }

 return 0;
}
