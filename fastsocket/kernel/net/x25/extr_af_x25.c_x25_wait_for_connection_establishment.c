
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_state; int sk_sleep; TYPE_1__* sk_socket; } ;
struct TYPE_2__ {int state; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int ERESTARTSYS ;
 int SS_UNCONNECTED ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 scalar_t__ TCP_ESTABLISHED ;
 int __set_current_state (int ) ;
 int add_wait_queue_exclusive (int ,int *) ;
 int current ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int remove_wait_queue (int ,int *) ;
 int schedule () ;
 scalar_t__ signal_pending (int ) ;
 int sock_error (struct sock*) ;
 int wait ;

__attribute__((used)) static int x25_wait_for_connection_establishment(struct sock *sk)
{
 DECLARE_WAITQUEUE(wait, current);
 int rc;

 add_wait_queue_exclusive(sk->sk_sleep, &wait);
 for (;;) {
  __set_current_state(TASK_INTERRUPTIBLE);
  rc = -ERESTARTSYS;
  if (signal_pending(current))
   break;
  rc = sock_error(sk);
  if (rc) {
   sk->sk_socket->state = SS_UNCONNECTED;
   break;
  }
  rc = 0;
  if (sk->sk_state != TCP_ESTABLISHED) {
   release_sock(sk);
   schedule();
   lock_sock(sk);
  } else
   break;
 }
 __set_current_state(TASK_RUNNING);
 remove_wait_queue(sk->sk_sleep, &wait);
 return rc;
}
