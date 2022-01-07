
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_shutdown; scalar_t__ sk_state; int sk_sleep; int sk_receive_queue; } ;


 int DEFINE_WAIT_FUNC (int ,int ) ;
 int ENOTCONN ;
 int RCV_SHUTDOWN ;
 int TASK_INTERRUPTIBLE ;
 scalar_t__ TCP_ESTABLISHED ;
 scalar_t__ TCP_LISTEN ;
 scalar_t__ connection_based (struct sock*) ;
 int current ;
 int finish_wait (int ,int *) ;
 int prepare_to_wait_exclusive (int ,int *,int ) ;
 int receiver_wake_function ;
 long schedule_timeout (long) ;
 scalar_t__ signal_pending (int ) ;
 int skb_queue_empty (int *) ;
 int sock_error (struct sock*) ;
 int sock_intr_errno (long) ;
 int wait ;

__attribute__((used)) static int wait_for_packet(struct sock *sk, int *err, long *timeo_p)
{
 int error;
 DEFINE_WAIT_FUNC(wait, receiver_wake_function);

 prepare_to_wait_exclusive(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);


 error = sock_error(sk);
 if (error)
  goto out_err;

 if (!skb_queue_empty(&sk->sk_receive_queue))
  goto out;


 if (sk->sk_shutdown & RCV_SHUTDOWN)
  goto out_noerr;




 error = -ENOTCONN;
 if (connection_based(sk) &&
     !(sk->sk_state == TCP_ESTABLISHED || sk->sk_state == TCP_LISTEN))
  goto out_err;


 if (signal_pending(current))
  goto interrupted;

 error = 0;
 *timeo_p = schedule_timeout(*timeo_p);
out:
 finish_wait(sk->sk_sleep, &wait);
 return error;
interrupted:
 error = sock_intr_errno(*timeo_p);
out_err:
 *err = error;
 goto out;
out_noerr:
 *err = 0;
 error = 1;
 goto out;
}
