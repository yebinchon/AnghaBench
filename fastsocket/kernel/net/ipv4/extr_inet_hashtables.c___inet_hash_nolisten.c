
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {TYPE_2__* sk_prot; int sk_hash; } ;
struct inet_hashinfo {int dummy; } ;
struct hlist_nulls_head {int dummy; } ;
struct inet_ehash_bucket {struct hlist_nulls_head chain; } ;
typedef int spinlock_t ;
struct TYPE_3__ {struct inet_hashinfo* hashinfo; } ;
struct TYPE_4__ {TYPE_1__ h; } ;


 int WARN_ON (int) ;
 int __sk_nulls_add_node_rcu (struct sock*,struct hlist_nulls_head*) ;
 struct inet_ehash_bucket* inet_ehash_bucket (struct inet_hashinfo*,int ) ;
 int * inet_ehash_lockp (struct inet_hashinfo*,int ) ;
 int inet_sk_ehashfn (struct sock*) ;
 int sk_unhashed (struct sock*) ;
 int sock_net (struct sock*) ;
 int sock_prot_inuse_add (int ,TYPE_2__*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void __inet_hash_nolisten(struct sock *sk)
{
 struct inet_hashinfo *hashinfo = sk->sk_prot->h.hashinfo;
 struct hlist_nulls_head *list;
 spinlock_t *lock;
 struct inet_ehash_bucket *head;

 WARN_ON(!sk_unhashed(sk));

 sk->sk_hash = inet_sk_ehashfn(sk);
 head = inet_ehash_bucket(hashinfo, sk->sk_hash);
 list = &head->chain;
 lock = inet_ehash_lockp(hashinfo, sk->sk_hash);

 spin_lock(lock);
 __sk_nulls_add_node_rcu(sk, list);
 spin_unlock(lock);
 sock_prot_inuse_add(sock_net(sk), sk->sk_prot, 1);
}
