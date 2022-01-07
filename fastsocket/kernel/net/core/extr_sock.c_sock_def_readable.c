
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_callback_lock; int sk_sleep; } ;


 int POLLIN ;
 int POLLPRI ;
 int POLLRDBAND ;
 int POLLRDNORM ;
 int POLL_IN ;
 int SOCK_WAKE_WAITD ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 scalar_t__ sk_has_sleeper (struct sock*) ;
 int sk_wake_async (struct sock*,int ,int ) ;
 int wake_up_interruptible_sync_poll (int ,int) ;

__attribute__((used)) static void sock_def_readable(struct sock *sk, int len)
{
 read_lock(&sk->sk_callback_lock);
 if (sk_has_sleeper(sk))
  wake_up_interruptible_sync_poll(sk->sk_sleep, POLLIN | POLLPRI |
      POLLRDNORM | POLLRDBAND);
 sk_wake_async(sk, SOCK_WAKE_WAITD, POLL_IN);
 read_unlock(&sk->sk_callback_lock);
}
