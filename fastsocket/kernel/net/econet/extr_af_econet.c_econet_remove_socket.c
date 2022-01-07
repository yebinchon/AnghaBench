
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct hlist_head {int dummy; } ;


 int econet_lock ;
 int sk_del_node_init (struct sock*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void econet_remove_socket(struct hlist_head *list, struct sock *sk)
{
 write_lock_bh(&econet_lock);
 sk_del_node_init(sk);
 write_unlock_bh(&econet_lock);
}
