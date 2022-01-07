
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {void (* sk_data_ready ) (struct sock*,int) ;int sk_callback_lock; struct rds_connection* sk_user_data; } ;
struct rds_tcp_connection {void (* t_orig_data_ready ) (struct sock*,int) ;} ;
struct rds_connection {int c_recv_w; struct rds_tcp_connection* c_transport_data; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int KM_SOFTIRQ0 ;
 int queue_delayed_work (int ,int *,int ) ;
 int rds_tcp_read_sock (struct rds_connection*,int ,int ) ;
 int rds_tcp_stats_inc (int ) ;
 int rds_wq ;
 int rdsdebug (char*,struct sock*,int) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int s_tcp_data_ready_calls ;

void rds_tcp_data_ready(struct sock *sk, int bytes)
{
 void (*ready)(struct sock *sk, int bytes);
 struct rds_connection *conn;
 struct rds_tcp_connection *tc;

 rdsdebug("data ready sk %p bytes %d\n", sk, bytes);

 read_lock(&sk->sk_callback_lock);
 conn = sk->sk_user_data;
 if (!conn) {
  ready = sk->sk_data_ready;
  goto out;
 }

 tc = conn->c_transport_data;
 ready = tc->t_orig_data_ready;
 rds_tcp_stats_inc(s_tcp_data_ready_calls);

 if (rds_tcp_read_sock(conn, GFP_ATOMIC, KM_SOFTIRQ0) == -ENOMEM)
  queue_delayed_work(rds_wq, &conn->c_recv_w, 0);
out:
 read_unlock(&sk->sk_callback_lock);
 ready(sk, bytes);
}
