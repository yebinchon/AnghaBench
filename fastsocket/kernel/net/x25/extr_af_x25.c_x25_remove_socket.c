
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int sk_del_node_init (struct sock*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;
 int x25_list_lock ;

__attribute__((used)) static void x25_remove_socket(struct sock *sk)
{
 write_lock_bh(&x25_list_lock);
 sk_del_node_init(sk);
 write_unlock_bh(&x25_list_lock);
}
