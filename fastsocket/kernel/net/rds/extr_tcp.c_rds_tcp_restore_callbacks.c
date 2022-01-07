
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* sk; } ;
struct rds_tcp_connection {int t_orig_state_change; int t_orig_data_ready; int t_orig_write_space; int * t_sock; int t_list_item; } ;
struct TYPE_2__ {int sk_callback_lock; int * sk_user_data; int sk_state_change; int sk_data_ready; int sk_write_space; } ;


 int list_del_init (int *) ;
 int rds_tcp_tc_count ;
 int rds_tcp_tc_list_lock ;
 int rdsdebug (char*,struct socket*,struct rds_tcp_connection*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void rds_tcp_restore_callbacks(struct socket *sock,
          struct rds_tcp_connection *tc)
{
 rdsdebug("restoring sock %p callbacks from tc %p\n", sock, tc);
 write_lock_bh(&sock->sk->sk_callback_lock);


 spin_lock(&rds_tcp_tc_list_lock);
 list_del_init(&tc->t_list_item);
 rds_tcp_tc_count--;
 spin_unlock(&rds_tcp_tc_list_lock);

 tc->t_sock = ((void*)0);

 sock->sk->sk_write_space = tc->t_orig_write_space;
 sock->sk->sk_data_ready = tc->t_orig_data_ready;
 sock->sk->sk_state_change = tc->t_orig_state_change;
 sock->sk->sk_user_data = ((void*)0);

 write_unlock_bh(&sock->sk->sk_callback_lock);
}
