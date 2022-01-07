
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_callback_lock; int sk_sleep; } ;


 int POLLIN ;
 int POLLRDBAND ;
 int POLLRDNORM ;
 int POLL_IN ;
 int SOCK_WAKE_WAITD ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 scalar_t__ sk_has_sleeper (struct sock*) ;
 int sk_wake_async (struct sock*,int ,int ) ;
 int wake_up_interruptible_sync_poll (int ,int) ;

void sctp_data_ready(struct sock *sk, int len)
{
 read_lock_bh(&sk->sk_callback_lock);
 if (sk_has_sleeper(sk))
  wake_up_interruptible_sync_poll(sk->sk_sleep, POLLIN |
      POLLRDNORM | POLLRDBAND);
 sk_wake_async(sk, SOCK_WAKE_WAITD, POLL_IN);
 read_unlock_bh(&sk->sk_callback_lock);
}
