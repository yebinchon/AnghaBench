
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {scalar_t__ sk_state; unsigned int sk_hash; TYPE_2__* sk_prot; } ;
struct hlist_nulls_head {int dummy; } ;
struct inet_listen_hashbucket {int lock; struct hlist_nulls_head head; } ;
struct inet_hashinfo {struct inet_listen_hashbucket* listening_hash; } ;
typedef int spinlock_t ;
struct TYPE_6__ {struct hlist_nulls_head chain; } ;
struct TYPE_4__ {struct inet_hashinfo* hashinfo; } ;
struct TYPE_5__ {TYPE_1__ h; } ;


 scalar_t__ TCP_LISTEN ;
 int WARN_ON (int) ;
 int __sk_nulls_add_node_rcu (struct sock*,struct hlist_nulls_head*) ;
 unsigned int inet6_sk_ehashfn (struct sock*) ;
 TYPE_3__* inet_ehash_bucket (struct inet_hashinfo*,unsigned int) ;
 int * inet_ehash_lockp (struct inet_hashinfo*,unsigned int) ;
 size_t inet_sk_listen_hashfn (struct sock*) ;
 int sk_unhashed (struct sock*) ;
 int sock_net (struct sock*) ;
 int sock_prot_inuse_add (int ,TYPE_2__*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void __inet6_hash(struct sock *sk)
{
 struct inet_hashinfo *hashinfo = sk->sk_prot->h.hashinfo;

 WARN_ON(!sk_unhashed(sk));

 if (sk->sk_state == TCP_LISTEN) {
  struct inet_listen_hashbucket *ilb;

  ilb = &hashinfo->listening_hash[inet_sk_listen_hashfn(sk)];
  spin_lock(&ilb->lock);
  __sk_nulls_add_node_rcu(sk, &ilb->head);
  spin_unlock(&ilb->lock);
 } else {
  unsigned int hash;
  struct hlist_nulls_head *list;
  spinlock_t *lock;

  sk->sk_hash = hash = inet6_sk_ehashfn(sk);
  list = &inet_ehash_bucket(hashinfo, hash)->chain;
  lock = inet_ehash_lockp(hashinfo, hash);
  spin_lock(lock);
  __sk_nulls_add_node_rcu(sk, list);
  spin_unlock(lock);
 }

 sock_prot_inuse_add(sock_net(sk), sk->sk_prot, 1);
}
