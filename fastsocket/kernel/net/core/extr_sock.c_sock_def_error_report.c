
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_callback_lock; int sk_sleep; } ;


 int POLLERR ;
 int POLL_ERR ;
 int SOCK_WAKE_IO ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 scalar_t__ sk_has_sleeper (struct sock*) ;
 int sk_wake_async (struct sock*,int ,int ) ;
 int wake_up_interruptible_poll (int ,int ) ;

__attribute__((used)) static void sock_def_error_report(struct sock *sk)
{
 read_lock(&sk->sk_callback_lock);
 if (sk_has_sleeper(sk))
  wake_up_interruptible_poll(sk->sk_sleep, POLLERR);
 sk_wake_async(sk, SOCK_WAKE_IO, POLL_ERR);
 read_unlock(&sk->sk_callback_lock);
}
