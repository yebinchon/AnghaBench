
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
struct sock {int * sk_sleep; } ;


 int SOCK_DEAD ;
 int sock_flag (struct sock*,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static inline void __rds_wake_sk_sleep(struct sock *sk)
{
 wait_queue_head_t *waitq = sk->sk_sleep;

 if (!sock_flag(sk, SOCK_DEAD) && waitq)
  wake_up(waitq);
}
