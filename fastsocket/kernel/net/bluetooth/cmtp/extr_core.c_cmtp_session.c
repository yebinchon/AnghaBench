
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wait_queue_t ;
struct sock {scalar_t__ sk_state; int sk_sleep; int sk_receive_queue; } ;
struct sk_buff {int dummy; } ;
struct cmtp_session {int flags; TYPE_1__* sock; int terminate; int num; } ;
struct TYPE_2__ {int file; struct sock* sk; } ;


 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,struct cmtp_session*) ;
 int CMTP_LOOPBACK ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int __cmtp_unlink_session (struct cmtp_session*) ;
 int add_wait_queue (int ,int *) ;
 int atomic_read (int *) ;
 int cmtp_detach_device (struct cmtp_session*) ;
 int cmtp_process_transmit (struct cmtp_session*) ;
 int cmtp_recv_frame (struct cmtp_session*,struct sk_buff*) ;
 int cmtp_session_sem ;
 int current ;
 int daemonize (char*,int ) ;
 int down_write (int *) ;
 int fput (int ) ;
 int init_waitqueue_entry (int *,int ) ;
 int kfree (struct cmtp_session*) ;
 int remove_wait_queue (int ,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 int set_user_nice (int ,int) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_orphan (struct sk_buff*) ;
 int up_write (int *) ;

__attribute__((used)) static int cmtp_session(void *arg)
{
 struct cmtp_session *session = arg;
 struct sock *sk = session->sock->sk;
 struct sk_buff *skb;
 wait_queue_t wait;

 BT_DBG("session %p", session);

 daemonize("kcmtpd_ctr_%d", session->num);
 set_user_nice(current, -15);

 init_waitqueue_entry(&wait, current);
 add_wait_queue(sk->sk_sleep, &wait);
 while (!atomic_read(&session->terminate)) {
  set_current_state(TASK_INTERRUPTIBLE);

  if (sk->sk_state != BT_CONNECTED)
   break;

  while ((skb = skb_dequeue(&sk->sk_receive_queue))) {
   skb_orphan(skb);
   cmtp_recv_frame(session, skb);
  }

  cmtp_process_transmit(session);

  schedule();
 }
 set_current_state(TASK_RUNNING);
 remove_wait_queue(sk->sk_sleep, &wait);

 down_write(&cmtp_session_sem);

 if (!(session->flags & (1 << CMTP_LOOPBACK)))
  cmtp_detach_device(session);

 fput(session->sock->file);

 __cmtp_unlink_session(session);

 up_write(&cmtp_session_sem);

 kfree(session);
 return 0;
}
