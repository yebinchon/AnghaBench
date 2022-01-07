
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {TYPE_2__* sk_prot; } ;
struct raw_hashinfo {int lock; } ;
struct TYPE_3__ {struct raw_hashinfo* raw_hash; } ;
struct TYPE_4__ {TYPE_1__ h; } ;


 scalar_t__ sk_del_node_init (struct sock*) ;
 int sock_net (struct sock*) ;
 int sock_prot_inuse_add (int ,TYPE_2__*,int) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void raw_unhash_sk(struct sock *sk)
{
 struct raw_hashinfo *h = sk->sk_prot->h.raw_hash;

 write_lock_bh(&h->lock);
 if (sk_del_node_init(sk))
  sock_prot_inuse_add(sock_net(sk), sk->sk_prot, -1);
 write_unlock_bh(&h->lock);
}
