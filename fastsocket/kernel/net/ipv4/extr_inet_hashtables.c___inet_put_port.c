
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sock {TYPE_2__* sk_prot; } ;
struct inet_hashinfo {int bind_bucket_cachep; int bsockets; struct inet_bind_hashbucket* bhash; int bhash_size; } ;
struct inet_bind_hashbucket {int lock; } ;
struct inet_bind_bucket {int num_owners; } ;
struct TYPE_8__ {struct inet_bind_bucket* icsk_bind_hash; } ;
struct TYPE_7__ {scalar_t__ num; } ;
struct TYPE_5__ {struct inet_hashinfo* hashinfo; } ;
struct TYPE_6__ {TYPE_1__ h; } ;


 int __sk_del_bind_node (struct sock*) ;
 int atomic_dec (int *) ;
 int inet_bhashfn (int ,scalar_t__,int ) ;
 int inet_bind_bucket_destroy (int ,struct inet_bind_bucket*) ;
 TYPE_4__* inet_csk (struct sock*) ;
 TYPE_3__* inet_sk (struct sock*) ;
 int sock_net (struct sock*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void __inet_put_port(struct sock *sk)
{
 struct inet_hashinfo *hashinfo = sk->sk_prot->h.hashinfo;
 const int bhash = inet_bhashfn(sock_net(sk), inet_sk(sk)->num,
   hashinfo->bhash_size);
 struct inet_bind_hashbucket *head = &hashinfo->bhash[bhash];
 struct inet_bind_bucket *tb;

 atomic_dec(&hashinfo->bsockets);

 spin_lock(&head->lock);
 tb = inet_csk(sk)->icsk_bind_hash;
 __sk_del_bind_node(sk);
 tb->num_owners--;
 inet_csk(sk)->icsk_bind_hash = ((void*)0);
 inet_sk(sk)->num = 0;
 inet_bind_bucket_destroy(hashinfo->bind_bucket_cachep, tb);
 spin_unlock(&head->lock);
}
