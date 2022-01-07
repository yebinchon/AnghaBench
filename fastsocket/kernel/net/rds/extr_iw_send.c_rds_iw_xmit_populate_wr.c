
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int send_flags; int num_sge; int * next; int opcode; } ;
struct rds_iw_send_work {struct ib_sge* s_sge; TYPE_1__ s_wr; int * s_op; int s_queued; } ;
struct rds_iw_connection {unsigned int i_send_hdrs_dma; struct rds_iw_send_work* i_sends; } ;
struct rds_header {int dummy; } ;
struct ib_sge {unsigned long addr; unsigned int length; void* lkey; } ;


 int IB_WR_SEND ;
 int WARN_ON (int) ;
 int jiffies ;
 struct ib_sge* rds_iw_data_sge (struct rds_iw_connection*,struct ib_sge*) ;
 struct ib_sge* rds_iw_header_sge (struct rds_iw_connection*,struct ib_sge*) ;
 void* rds_iw_local_dma_lkey (struct rds_iw_connection*) ;

__attribute__((used)) static inline void
rds_iw_xmit_populate_wr(struct rds_iw_connection *ic,
  struct rds_iw_send_work *send, unsigned int pos,
  unsigned long buffer, unsigned int length,
  int send_flags)
{
 struct ib_sge *sge;

 WARN_ON(pos != send - ic->i_sends);

 send->s_wr.send_flags = send_flags;
 send->s_wr.opcode = IB_WR_SEND;
 send->s_wr.num_sge = 2;
 send->s_wr.next = ((void*)0);
 send->s_queued = jiffies;
 send->s_op = ((void*)0);

 if (length != 0) {
  sge = rds_iw_data_sge(ic, send->s_sge);
  sge->addr = buffer;
  sge->length = length;
  sge->lkey = rds_iw_local_dma_lkey(ic);

  sge = rds_iw_header_sge(ic, send->s_sge);
 } else {


  send->s_wr.num_sge = 1;
  sge = &send->s_sge[0];
 }

 sge->addr = ic->i_send_hdrs_dma + (pos * sizeof(struct rds_header));
 sge->length = sizeof(struct rds_header);
 sge->lkey = rds_iw_local_dma_lkey(ic);
}
