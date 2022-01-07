
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_sleep; TYPE_1__* sk_socket; int sk_receive_queue; } ;
struct TYPE_2__ {int flags; } ;


 int DEFINE_WAIT (int ) ;
 int SOCK_ASYNC_WAITDATA ;
 int TASK_INTERRUPTIBLE ;
 int clear_bit (int ,int *) ;
 int finish_wait (int ,int *) ;
 int prepare_to_wait (int ,int *,int ) ;
 int set_bit (int ,int *) ;
 int sk_wait_event (struct sock*,long*,int) ;
 int skb_queue_empty (int *) ;
 int wait ;

int sk_wait_data(struct sock *sk, long *timeo)
{
 int rc;
 DEFINE_WAIT(wait);

 prepare_to_wait(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);
 set_bit(SOCK_ASYNC_WAITDATA, &sk->sk_socket->flags);
 rc = sk_wait_event(sk, timeo, !skb_queue_empty(&sk->sk_receive_queue));
 clear_bit(SOCK_ASYNC_WAITDATA, &sk->sk_socket->flags);
 finish_wait(sk->sk_sleep, &wait);
 return rc;
}
