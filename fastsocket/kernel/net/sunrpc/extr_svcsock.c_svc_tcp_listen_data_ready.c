
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xpt_flags; } ;
struct svc_sock {TYPE_1__ sk_xprt; } ;
struct sock {scalar_t__ sk_state; scalar_t__ sk_sleep; scalar_t__ sk_user_data; } ;


 scalar_t__ TCP_LISTEN ;
 int XPT_CONN ;
 int dprintk (char*,struct sock*,scalar_t__) ;
 int printk (char*,struct sock*) ;
 int set_bit (int ,int *) ;
 int svc_xprt_enqueue (TYPE_1__*) ;
 scalar_t__ waitqueue_active (scalar_t__) ;
 int wake_up_interruptible_all (scalar_t__) ;

__attribute__((used)) static void svc_tcp_listen_data_ready(struct sock *sk, int count_unused)
{
 struct svc_sock *svsk = (struct svc_sock *)sk->sk_user_data;

 dprintk("svc: socket %p TCP (listen) state change %d\n",
  sk, sk->sk_state);
 if (sk->sk_state == TCP_LISTEN) {
  if (svsk) {
   set_bit(XPT_CONN, &svsk->sk_xprt.xpt_flags);
   svc_xprt_enqueue(&svsk->sk_xprt);
  } else
   printk("svc: socket %p: no user data\n", sk);
 }

 if (sk->sk_sleep && waitqueue_active(sk->sk_sleep))
  wake_up_interruptible_all(sk->sk_sleep);
}
