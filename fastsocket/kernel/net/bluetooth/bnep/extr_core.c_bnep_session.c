
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wait_queue_t ;
struct sock {scalar_t__ sk_state; int sk_sleep; int sk_err; int sk_write_queue; int sk_receive_queue; } ;
struct sk_buff {int dummy; } ;
struct net_device {int name; } ;
struct bnep_session {TYPE_1__* sock; int killed; struct net_device* dev; } ;
struct TYPE_2__ {int file; struct sock* sk; } ;


 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*) ;
 int EUNATCH ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int __bnep_unlink_session (struct bnep_session*) ;
 int add_wait_queue (int ,int *) ;
 int atomic_read (int *) ;
 int bnep_rx_frame (struct bnep_session*,struct sk_buff*) ;
 int bnep_session_sem ;
 scalar_t__ bnep_tx_frame (struct bnep_session*,struct sk_buff*) ;
 int current ;
 int daemonize (char*,int ) ;
 int down_write (int *) ;
 int fput (int ) ;
 int free_netdev (struct net_device*) ;
 int init_waitqueue_entry (int *,int ) ;
 int netif_wake_queue (struct net_device*) ;
 int remove_wait_queue (int ,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 int set_user_nice (int ,int) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_orphan (struct sk_buff*) ;
 int unregister_netdev (struct net_device*) ;
 int up_write (int *) ;
 int wake_up_interruptible (int ) ;

__attribute__((used)) static int bnep_session(void *arg)
{
 struct bnep_session *s = arg;
 struct net_device *dev = s->dev;
 struct sock *sk = s->sock->sk;
 struct sk_buff *skb;
 wait_queue_t wait;

 BT_DBG("");

 daemonize("kbnepd %s", dev->name);
 set_user_nice(current, -15);

 init_waitqueue_entry(&wait, current);
 add_wait_queue(sk->sk_sleep, &wait);
 while (!atomic_read(&s->killed)) {
  set_current_state(TASK_INTERRUPTIBLE);


  while ((skb = skb_dequeue(&sk->sk_receive_queue))) {
   skb_orphan(skb);
   bnep_rx_frame(s, skb);
  }

  if (sk->sk_state != BT_CONNECTED)
   break;


  while ((skb = skb_dequeue(&sk->sk_write_queue)))
   if (bnep_tx_frame(s, skb))
    break;
  netif_wake_queue(dev);

  schedule();
 }
 set_current_state(TASK_RUNNING);
 remove_wait_queue(sk->sk_sleep, &wait);


 down_write(&bnep_session_sem);


 unregister_netdev(dev);


 s->sock->sk->sk_err = EUNATCH;

 wake_up_interruptible(s->sock->sk->sk_sleep);


 fput(s->sock->file);

 __bnep_unlink_session(s);

 up_write(&bnep_session_sem);
 free_netdev(dev);
 return 0;
}
