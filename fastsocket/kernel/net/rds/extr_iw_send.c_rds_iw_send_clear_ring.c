
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {int opcode; } ;
struct rds_iw_send_work {scalar_t__ s_op; scalar_t__ s_rm; TYPE_1__ s_wr; int s_page_list; int s_mr; } ;
struct TYPE_4__ {scalar_t__ w_nr; } ;
struct rds_iw_connection {TYPE_2__ i_send_ring; struct rds_iw_send_work* i_sends; } ;


 int BUG_ON (int) ;
 int IB_WC_WR_FLUSH_ERR ;
 int ib_dereg_mr (int ) ;
 int ib_free_fast_reg_page_list (int ) ;
 int rds_iw_send_unmap_rdma (struct rds_iw_connection*,scalar_t__) ;
 int rds_iw_send_unmap_rm (struct rds_iw_connection*,struct rds_iw_send_work*,int ) ;

void rds_iw_send_clear_ring(struct rds_iw_connection *ic)
{
 struct rds_iw_send_work *send;
 u32 i;

 for (i = 0, send = ic->i_sends; i < ic->i_send_ring.w_nr; i++, send++) {
  BUG_ON(!send->s_mr);
  ib_dereg_mr(send->s_mr);
  BUG_ON(!send->s_page_list);
  ib_free_fast_reg_page_list(send->s_page_list);
  if (send->s_wr.opcode == 0xdead)
   continue;
  if (send->s_rm)
   rds_iw_send_unmap_rm(ic, send, IB_WC_WR_FLUSH_ERR);
  if (send->s_op)
   rds_iw_send_unmap_rdma(ic, send->s_op);
 }
}
