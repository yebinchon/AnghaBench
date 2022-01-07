
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int wr_id; int num_sge; int sg_list; int * next; } ;
struct rds_iw_recv_work {int r_sge; TYPE_2__ r_wr; int * r_frag; int * r_iwinc; } ;
struct TYPE_3__ {int w_nr; } ;
struct rds_iw_connection {scalar_t__ i_recv_hdrs_dma; TYPE_1__ i_recv_ring; struct rds_iw_recv_work* i_recvs; } ;
struct rds_header {int dummy; } ;
struct ib_sge {int length; scalar_t__ lkey; scalar_t__ addr; } ;


 int RDS_FRAG_SIZE ;
 int RDS_IW_RECV_SGE ;
 struct ib_sge* rds_iw_data_sge (struct rds_iw_connection*,int ) ;
 struct ib_sge* rds_iw_header_sge (struct rds_iw_connection*,int ) ;

void rds_iw_recv_init_ring(struct rds_iw_connection *ic)
{
 struct rds_iw_recv_work *recv;
 u32 i;

 for (i = 0, recv = ic->i_recvs; i < ic->i_recv_ring.w_nr; i++, recv++) {
  struct ib_sge *sge;

  recv->r_iwinc = ((void*)0);
  recv->r_frag = ((void*)0);

  recv->r_wr.next = ((void*)0);
  recv->r_wr.wr_id = i;
  recv->r_wr.sg_list = recv->r_sge;
  recv->r_wr.num_sge = RDS_IW_RECV_SGE;

  sge = rds_iw_data_sge(ic, recv->r_sge);
  sge->addr = 0;
  sge->length = RDS_FRAG_SIZE;
  sge->lkey = 0;

  sge = rds_iw_header_sge(ic, recv->r_sge);
  sge->addr = ic->i_recv_hdrs_dma + (i * sizeof(struct rds_header));
  sge->length = sizeof(struct rds_header);
  sge->lkey = 0;
 }
}
