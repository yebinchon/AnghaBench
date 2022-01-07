
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xpt_flags; } ;
struct svc_sock {TYPE_1__ sk_xprt; } ;
struct sock {scalar_t__ sk_sleep; scalar_t__ sk_user_data; } ;


 int XPT_BUSY ;
 int dprintk (char*,struct svc_sock*,...) ;
 int svc_xprt_enqueue (TYPE_1__*) ;
 int test_bit (int ,int *) ;
 scalar_t__ waitqueue_active (scalar_t__) ;
 int wake_up_interruptible (scalar_t__) ;

__attribute__((used)) static void svc_write_space(struct sock *sk)
{
 struct svc_sock *svsk = (struct svc_sock *)(sk->sk_user_data);

 if (svsk) {
  dprintk("svc: socket %p(inet %p), write_space busy=%d\n",
   svsk, sk, test_bit(XPT_BUSY, &svsk->sk_xprt.xpt_flags));
  svc_xprt_enqueue(&svsk->sk_xprt);
 }

 if (sk->sk_sleep && waitqueue_active(sk->sk_sleep)) {
  dprintk("RPC svc_write_space: someone sleeping on %p\n",
         svsk);
  wake_up_interruptible(sk->sk_sleep);
 }
}
