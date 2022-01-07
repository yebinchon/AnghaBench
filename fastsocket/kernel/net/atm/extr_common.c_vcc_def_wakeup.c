
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_callback_lock; int sk_sleep; } ;


 int read_lock (int *) ;
 int read_unlock (int *) ;
 scalar_t__ sk_has_sleeper (struct sock*) ;
 int wake_up (int ) ;

__attribute__((used)) static void vcc_def_wakeup(struct sock *sk)
{
 read_lock(&sk->sk_callback_lock);
 if (sk_has_sleeper(sk))
  wake_up(sk->sk_sleep);
 read_unlock(&sk->sk_callback_lock);
}
