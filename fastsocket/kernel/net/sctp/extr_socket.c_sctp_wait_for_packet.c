
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_shutdown; int sk_sleep; int sk_receive_queue; } ;
struct TYPE_4__ {TYPE_1__* ep; } ;
struct TYPE_3__ {int asocs; } ;


 int DEFINE_WAIT (int ) ;
 int ENOTCONN ;
 int LISTENING ;
 int RCV_SHUTDOWN ;
 int TASK_INTERRUPTIBLE ;
 int current ;
 int finish_wait (int ,int *) ;
 scalar_t__ list_empty (int *) ;
 int prepare_to_wait_exclusive (int ,int *,int ) ;
 long schedule_timeout (long) ;
 int sctp_lock_sock (struct sock*) ;
 int sctp_release_sock (struct sock*) ;
 TYPE_2__* sctp_sk (struct sock*) ;
 int sctp_sstate (struct sock*,int ) ;
 scalar_t__ signal_pending (int ) ;
 int skb_queue_empty (int *) ;
 int sock_error (struct sock*) ;
 int sock_intr_errno (long) ;
 int wait ;

__attribute__((used)) static int sctp_wait_for_packet(struct sock * sk, int *err, long *timeo_p)
{
 int error;
 DEFINE_WAIT(wait);

 prepare_to_wait_exclusive(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);


 error = sock_error(sk);
 if (error)
  goto out;

 if (!skb_queue_empty(&sk->sk_receive_queue))
  goto ready;


 if (sk->sk_shutdown & RCV_SHUTDOWN)
  goto out;




 error = -ENOTCONN;


 if (list_empty(&sctp_sk(sk)->ep->asocs) && !sctp_sstate(sk, LISTENING))
  goto out;


 if (signal_pending(current))
  goto interrupted;






 sctp_release_sock(sk);
 *timeo_p = schedule_timeout(*timeo_p);
 sctp_lock_sock(sk);

ready:
 finish_wait(sk->sk_sleep, &wait);
 return 0;

interrupted:
 error = sock_intr_errno(*timeo_p);

out:
 finish_wait(sk->sk_sleep, &wait);
 *err = error;
 return error;
}
