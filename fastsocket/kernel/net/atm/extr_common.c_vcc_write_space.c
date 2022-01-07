
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_callback_lock; int sk_sleep; } ;


 int POLL_OUT ;
 int SOCK_WAKE_SPACE ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 scalar_t__ sk_has_sleeper (struct sock*) ;
 int sk_wake_async (struct sock*,int ,int ) ;
 scalar_t__ vcc_writable (struct sock*) ;
 int wake_up_interruptible (int ) ;

__attribute__((used)) static void vcc_write_space(struct sock *sk)
{
 read_lock(&sk->sk_callback_lock);

 if (vcc_writable(sk)) {
  if (sk_has_sleeper(sk))
   wake_up_interruptible(sk->sk_sleep);

  sk_wake_async(sk, SOCK_WAKE_SPACE, POLL_OUT);
 }

 read_unlock(&sk->sk_callback_lock);
}
