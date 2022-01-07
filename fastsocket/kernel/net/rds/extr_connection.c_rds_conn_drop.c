
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_connection {int c_down_w; int c_state; } ;


 int RDS_CONN_ERROR ;
 int atomic_set (int *,int ) ;
 int queue_work (int ,int *) ;
 int rds_wq ;

void rds_conn_drop(struct rds_connection *conn)
{
 atomic_set(&conn->c_state, RDS_CONN_ERROR);
 queue_work(rds_wq, &conn->c_down_w);
}
