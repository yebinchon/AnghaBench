
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int dn_hash_lock ;
 int sk_del_node_init (struct sock*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void dn_unhash_sock_bh(struct sock *sk)
{
 write_lock_bh(&dn_hash_lock);
 sk_del_node_init(sk);
 write_unlock_bh(&dn_hash_lock);
}
