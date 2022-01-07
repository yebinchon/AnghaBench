
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rds_ib_recv_work {TYPE_3__* r_frag; } ;
struct rds_ib_connection {int i_recv_ring; TYPE_2__* i_cm_id; struct rds_ib_recv_work* i_recvs; int i_recv_cq; struct rds_connection* conn; } ;
struct rds_ib_ack_state {int dummy; } ;
struct rds_connection {int c_faddr; } ;
struct TYPE_4__ {int imm_data; } ;
struct ib_wc {scalar_t__ status; int byte_len; TYPE_1__ ex; scalar_t__ wr_id; } ;
struct TYPE_6__ {int f_sg; } ;
struct TYPE_5__ {int device; } ;


 int DMA_FROM_DEVICE ;
 scalar_t__ IB_WC_SUCCESS ;
 int be32_to_cpu (int ) ;
 int ib_dma_unmap_sg (int ,int *,int,int ) ;
 scalar_t__ ib_poll_cq (int ,int,struct ib_wc*) ;
 scalar_t__ rds_conn_connecting (struct rds_connection*) ;
 scalar_t__ rds_conn_up (struct rds_connection*) ;
 int rds_ib_conn_error (struct rds_connection*,char*,int *,scalar_t__,int ) ;
 int rds_ib_process_recv (struct rds_connection*,struct rds_ib_recv_work*,int ,struct rds_ib_ack_state*) ;
 int rds_ib_ring_free (int *,int) ;
 size_t rds_ib_ring_oldest (int *) ;
 int rds_ib_stats_inc (int ) ;
 int rds_ib_wc_status_str (scalar_t__) ;
 int rdsdebug (char*,unsigned long long,scalar_t__,int ,int ,int ) ;
 int s_ib_rx_cq_event ;

__attribute__((used)) static inline void rds_poll_cq(struct rds_ib_connection *ic,
          struct rds_ib_ack_state *state)
{
 struct rds_connection *conn = ic->conn;
 struct ib_wc wc;
 struct rds_ib_recv_work *recv;

 while (ib_poll_cq(ic->i_recv_cq, 1, &wc) > 0) {
  rdsdebug("wc wr_id 0x%llx status %u (%s) byte_len %u imm_data %u\n",
    (unsigned long long)wc.wr_id, wc.status,
    rds_ib_wc_status_str(wc.status), wc.byte_len,
    be32_to_cpu(wc.ex.imm_data));
  rds_ib_stats_inc(s_ib_rx_cq_event);

  recv = &ic->i_recvs[rds_ib_ring_oldest(&ic->i_recv_ring)];

  ib_dma_unmap_sg(ic->i_cm_id->device, &recv->r_frag->f_sg, 1, DMA_FROM_DEVICE);






  if (wc.status == IB_WC_SUCCESS) {
   rds_ib_process_recv(conn, recv, wc.byte_len, state);
  } else {

   if (rds_conn_up(conn) || rds_conn_connecting(conn))
    rds_ib_conn_error(conn, "recv completion on %pI4 had "
        "status %u (%s), disconnecting and "
        "reconnecting\n", &conn->c_faddr,
        wc.status,
        rds_ib_wc_status_str(wc.status));
  }






  rds_ib_ring_free(&ic->i_recv_ring, 1);
 }
}
