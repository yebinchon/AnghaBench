
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct bt_sock_list {int lock; } ;


 int sk_del_node_init (struct sock*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void bt_sock_unlink(struct bt_sock_list *l, struct sock *sk)
{
 write_lock_bh(&l->lock);
 sk_del_node_init(sk);
 write_unlock_bh(&l->lock);
}
