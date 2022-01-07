
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_sge {int length; int lkey; int addr; } ;
struct ib_send_wr {int num_sge; int send_flags; int wr_id; int opcode; struct ib_sge* sg_list; } ;
struct rds_iw_connection {int i_ack_dma; struct ib_sge i_ack_sge; struct ib_send_wr i_ack_wr; } ;
struct rds_header {int dummy; } ;


 int IB_SEND_SIGNALED ;
 int IB_SEND_SOLICITED ;
 int IB_WR_SEND ;
 int RDS_IW_ACK_WR_ID ;
 int rds_iw_local_dma_lkey (struct rds_iw_connection*) ;

void rds_iw_recv_init_ack(struct rds_iw_connection *ic)
{
 struct ib_send_wr *wr = &ic->i_ack_wr;
 struct ib_sge *sge = &ic->i_ack_sge;

 sge->addr = ic->i_ack_dma;
 sge->length = sizeof(struct rds_header);
 sge->lkey = rds_iw_local_dma_lkey(ic);

 wr->sg_list = sge;
 wr->num_sge = 1;
 wr->opcode = IB_WR_SEND;
 wr->wr_id = RDS_IW_ACK_WR_ID;
 wr->send_flags = IB_SEND_SIGNALED | IB_SEND_SOLICITED;
}
