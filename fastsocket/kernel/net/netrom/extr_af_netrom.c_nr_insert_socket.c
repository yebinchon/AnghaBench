
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int nr_list ;
 int nr_list_lock ;
 int sk_add_node (struct sock*,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void nr_insert_socket(struct sock *sk)
{
 spin_lock_bh(&nr_list_lock);
 sk_add_node(sk, &nr_list);
 spin_unlock_bh(&nr_list_lock);
}
