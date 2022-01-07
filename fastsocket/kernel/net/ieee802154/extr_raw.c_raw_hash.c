
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_prot; } ;


 int raw_head ;
 int raw_lock ;
 int sk_add_node (struct sock*,int *) ;
 int sock_net (struct sock*) ;
 int sock_prot_inuse_add (int ,int ,int) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void raw_hash(struct sock *sk)
{
 write_lock_bh(&raw_lock);
 sk_add_node(sk, &raw_head);
 sock_prot_inuse_add(sock_net(sk), sk->sk_prot, 1);
 write_unlock_bh(&raw_lock);
}
