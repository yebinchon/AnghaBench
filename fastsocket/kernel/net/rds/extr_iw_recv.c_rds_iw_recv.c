
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_iw_connection {int i_recv_mutex; } ;
struct rds_connection {struct rds_iw_connection* c_transport_data; } ;


 int ENOMEM ;
 int GFP_HIGHUSER ;
 int GFP_KERNEL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ rds_conn_up (struct rds_connection*) ;
 int rds_iw_attempt_ack (struct rds_iw_connection*) ;
 scalar_t__ rds_iw_recv_refill (struct rds_connection*,int ,int ,int ) ;
 int rds_iw_stats_inc (int ) ;
 int rdsdebug (char*,struct rds_connection*) ;
 int s_iw_rx_refill_from_thread ;

int rds_iw_recv(struct rds_connection *conn)
{
 struct rds_iw_connection *ic = conn->c_transport_data;
 int ret = 0;

 rdsdebug("conn %p\n", conn);





 mutex_lock(&ic->i_recv_mutex);
 if (rds_iw_recv_refill(conn, GFP_KERNEL, GFP_HIGHUSER, 0))
  ret = -ENOMEM;
 else
  rds_iw_stats_inc(s_iw_rx_refill_from_thread);
 mutex_unlock(&ic->i_recv_mutex);

 if (rds_conn_up(conn))
  rds_iw_attempt_ack(ic);

 return ret;
}
