
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; int sk_sleep; int sk_receive_queue; } ;
struct sk_buff {int dummy; } ;


 int DEFINE_WAIT (int ) ;
 int EAGAIN ;
 int EINVAL ;
 struct sk_buff* ERR_PTR (int) ;
 int TASK_INTERRUPTIBLE ;
 scalar_t__ TCP_LISTEN ;
 int current ;
 int finish_wait (int ,int *) ;
 int lock_sock (struct sock*) ;
 int prepare_to_wait (int ,int *,int ) ;
 int release_sock (struct sock*) ;
 long schedule_timeout (long) ;
 scalar_t__ signal_pending (int ) ;
 struct sk_buff* skb_dequeue (int *) ;
 int sock_intr_errno (long) ;
 int wait ;

__attribute__((used)) static struct sk_buff *dn_wait_for_connect(struct sock *sk, long *timeo)
{
 DEFINE_WAIT(wait);
 struct sk_buff *skb = ((void*)0);
 int err = 0;

 prepare_to_wait(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);
 for(;;) {
  release_sock(sk);
  skb = skb_dequeue(&sk->sk_receive_queue);
  if (skb == ((void*)0)) {
   *timeo = schedule_timeout(*timeo);
   skb = skb_dequeue(&sk->sk_receive_queue);
  }
  lock_sock(sk);
  if (skb != ((void*)0))
   break;
  err = -EINVAL;
  if (sk->sk_state != TCP_LISTEN)
   break;
  err = sock_intr_errno(*timeo);
  if (signal_pending(current))
   break;
  err = -EAGAIN;
  if (!*timeo)
   break;
  prepare_to_wait(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);
 }
 finish_wait(sk->sk_sleep, &wait);

 return skb == ((void*)0) ? ERR_PTR(err) : skb;
}
