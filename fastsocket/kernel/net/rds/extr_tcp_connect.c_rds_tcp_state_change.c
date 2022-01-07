
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {void (* sk_state_change ) (struct sock*) ;int sk_state; int sk_callback_lock; struct rds_connection* sk_user_data; } ;
struct rds_tcp_connection {void (* t_orig_state_change ) (struct sock*) ;int t_sock; } ;
struct rds_connection {struct rds_tcp_connection* c_transport_data; } ;






 int rds_conn_drop (struct rds_connection*) ;
 int rds_connect_complete (struct rds_connection*) ;
 int rdsdebug (char*,int ,int) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

void rds_tcp_state_change(struct sock *sk)
{
 void (*state_change)(struct sock *sk);
 struct rds_connection *conn;
 struct rds_tcp_connection *tc;

 read_lock(&sk->sk_callback_lock);
 conn = sk->sk_user_data;
 if (!conn) {
  state_change = sk->sk_state_change;
  goto out;
 }
 tc = conn->c_transport_data;
 state_change = tc->t_orig_state_change;

 rdsdebug("sock %p state_change to %d\n", tc->t_sock, sk->sk_state);

 switch(sk->sk_state) {

  case 128:
  case 129:
   break;
  case 130:
   rds_connect_complete(conn);
   break;
  case 131:
   rds_conn_drop(conn);
  default:
   break;
 }
out:
 read_unlock(&sk->sk_callback_lock);
 state_change(sk);
}
