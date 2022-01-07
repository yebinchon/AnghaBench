
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_sndbuf; int sk_callback_lock; int sk_sleep; int sk_wmem_alloc; } ;


 int POLLOUT ;
 int POLLWRBAND ;
 int POLLWRNORM ;
 int POLL_OUT ;
 int SOCK_WAKE_SPACE ;
 int atomic_read (int *) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 scalar_t__ sk_has_sleeper (struct sock*) ;
 int sk_wake_async (struct sock*,int ,int ) ;
 scalar_t__ sock_writeable (struct sock*) ;
 int wake_up_interruptible_sync_poll (int ,int) ;

__attribute__((used)) static void sock_def_write_space(struct sock *sk)
{
 read_lock(&sk->sk_callback_lock);




 if ((atomic_read(&sk->sk_wmem_alloc) << 1) <= sk->sk_sndbuf) {
  if (sk_has_sleeper(sk))
   wake_up_interruptible_sync_poll(sk->sk_sleep, POLLOUT |
      POLLWRNORM | POLLWRBAND);


  if (sock_writeable(sk))
   sk_wake_async(sk, SOCK_WAKE_SPACE, POLL_OUT);
 }

 read_unlock(&sk->sk_callback_lock);
}
