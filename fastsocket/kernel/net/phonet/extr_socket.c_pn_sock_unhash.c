
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int lock; } ;


 TYPE_1__ pnsocks ;
 int sk_del_node_init (struct sock*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void pn_sock_unhash(struct sock *sk)
{
 spin_lock_bh(&pnsocks.lock);
 sk_del_node_init(sk);
 spin_unlock_bh(&pnsocks.lock);
}
