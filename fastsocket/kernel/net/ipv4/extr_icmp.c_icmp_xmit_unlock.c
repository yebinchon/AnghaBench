
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int slock; } ;
struct sock {TYPE_1__ sk_lock; } ;


 int spin_unlock_bh (int *) ;

__attribute__((used)) static inline void icmp_xmit_unlock(struct sock *sk)
{
 spin_unlock_bh(&sk->sk_lock.slock);
}
