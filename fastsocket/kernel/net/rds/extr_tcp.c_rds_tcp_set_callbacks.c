
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* sk; } ;
struct rds_tcp_connection {scalar_t__ t_orig_data_ready; int t_orig_state_change; int t_orig_write_space; struct rds_connection* conn; struct socket* t_sock; int t_list_item; } ;
struct rds_connection {struct rds_tcp_connection* c_transport_data; } ;
struct TYPE_2__ {scalar_t__ sk_data_ready; scalar_t__ sk_user_data; int sk_callback_lock; int sk_state_change; int sk_write_space; } ;


 int list_add_tail (int *,int *) ;
 scalar_t__ rds_tcp_data_ready ;
 scalar_t__ rds_tcp_listen_data_ready ;
 int rds_tcp_state_change ;
 int rds_tcp_tc_count ;
 int rds_tcp_tc_list ;
 int rds_tcp_tc_list_lock ;
 int rds_tcp_write_space ;
 int rdsdebug (char*,struct socket*,struct rds_tcp_connection*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void rds_tcp_set_callbacks(struct socket *sock, struct rds_connection *conn)
{
 struct rds_tcp_connection *tc = conn->c_transport_data;

 rdsdebug("setting sock %p callbacks to tc %p\n", sock, tc);
 write_lock_bh(&sock->sk->sk_callback_lock);


 spin_lock(&rds_tcp_tc_list_lock);
 list_add_tail(&tc->t_list_item, &rds_tcp_tc_list);
 rds_tcp_tc_count++;
 spin_unlock(&rds_tcp_tc_list_lock);


 if (sock->sk->sk_data_ready == rds_tcp_listen_data_ready)
  sock->sk->sk_data_ready = sock->sk->sk_user_data;

 tc->t_sock = sock;
 tc->conn = conn;
 tc->t_orig_data_ready = sock->sk->sk_data_ready;
 tc->t_orig_write_space = sock->sk->sk_write_space;
 tc->t_orig_state_change = sock->sk->sk_state_change;

 sock->sk->sk_user_data = conn;
 sock->sk->sk_data_ready = rds_tcp_data_ready;
 sock->sk->sk_write_space = rds_tcp_write_space;
 sock->sk->sk_state_change = rds_tcp_state_change;

 write_unlock_bh(&sock->sk->sk_callback_lock);
}
