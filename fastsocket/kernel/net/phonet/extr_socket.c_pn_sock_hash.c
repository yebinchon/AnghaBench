
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int lock; int hlist; } ;


 TYPE_1__ pnsocks ;
 int sk_add_node (struct sock*,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void pn_sock_hash(struct sock *sk)
{
 spin_lock_bh(&pnsocks.lock);
 sk_add_node(sk, &pnsocks.hlist);
 spin_unlock_bh(&pnsocks.lock);
}
