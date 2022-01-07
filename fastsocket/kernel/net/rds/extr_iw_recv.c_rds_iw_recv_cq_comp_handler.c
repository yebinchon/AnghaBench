
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_iw_connection {int i_recv_tasklet; } ;
struct rds_connection {struct rds_iw_connection* c_transport_data; } ;
struct ib_cq {int dummy; } ;


 int rds_iw_stats_inc (int ) ;
 int rdsdebug (char*,struct rds_connection*,struct ib_cq*) ;
 int s_iw_rx_cq_call ;
 int tasklet_schedule (int *) ;

void rds_iw_recv_cq_comp_handler(struct ib_cq *cq, void *context)
{
 struct rds_connection *conn = context;
 struct rds_iw_connection *ic = conn->c_transport_data;

 rdsdebug("conn %p cq %p\n", conn, cq);

 rds_iw_stats_inc(s_iw_rx_cq_call);

 tasklet_schedule(&ic->i_recv_tasklet);
}
