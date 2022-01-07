
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wq; int slock; } ;
struct sock {TYPE_1__ sk_lock; } ;


 int DEFINE_WAIT (int ) ;
 int TASK_UNINTERRUPTIBLE ;
 int finish_wait (int *,int *) ;
 int prepare_to_wait_exclusive (int *,int *,int ) ;
 int schedule () ;
 int sock_owned_by_user (struct sock*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wait ;

__attribute__((used)) static void __lock_sock(struct sock *sk)
{
 DEFINE_WAIT(wait);

 for (;;) {
  prepare_to_wait_exclusive(&sk->sk_lock.wq, &wait,
     TASK_UNINTERRUPTIBLE);
  spin_unlock_bh(&sk->sk_lock.slock);
  schedule();
  spin_lock_bh(&sk->sk_lock.slock);
  if (!sock_owned_by_user(sk))
   break;
 }
 finish_wait(&sk->sk_lock.wq, &wait);
}
