
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_connection {int c_conn_w; int c_flags; } ;


 scalar_t__ RDS_CONN_DOWN ;
 int RDS_RECONNECT_PENDING ;
 int queue_delayed_work (int ,int *,int ) ;
 scalar_t__ rds_conn_state (struct rds_connection*) ;
 int rds_wq ;
 int test_and_set_bit (int ,int *) ;

void rds_conn_connect_if_down(struct rds_connection *conn)
{
 if (rds_conn_state(conn) == RDS_CONN_DOWN &&
     !test_and_set_bit(RDS_RECONNECT_PENDING, &conn->c_flags))
  queue_delayed_work(rds_wq, &conn->c_conn_w, 0);
}
