
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct svcxprt_rdma {int dummy; } ;
struct svc_rdma_fastreg_mr {TYPE_3__* mr; int access_flags; int map_len; int page_list_len; int page_list; scalar_t__ kva; } ;
struct TYPE_4__ {unsigned long iova_start; int rkey; int access_flags; int length; int page_shift; int page_list_len; int page_list; } ;
struct TYPE_5__ {TYPE_1__ fast_reg; } ;
struct ib_send_wr {TYPE_2__ wr; int send_flags; int opcode; } ;
struct TYPE_6__ {int lkey; } ;


 int IB_SEND_SIGNALED ;
 int IB_WR_FAST_REG_MR ;
 int PAGE_SHIFT ;
 int ib_update_fast_reg_key (TYPE_3__*,scalar_t__) ;
 int memset (struct ib_send_wr*,int ,int) ;
 int svc_rdma_send (struct svcxprt_rdma*,struct ib_send_wr*) ;

int svc_rdma_fastreg(struct svcxprt_rdma *xprt,
       struct svc_rdma_fastreg_mr *frmr)
{
 struct ib_send_wr fastreg_wr;
 u8 key;


 key = (u8)(frmr->mr->lkey & 0x000000FF);
 ib_update_fast_reg_key(frmr->mr, ++key);


 memset(&fastreg_wr, 0, sizeof fastreg_wr);
 fastreg_wr.opcode = IB_WR_FAST_REG_MR;
 fastreg_wr.send_flags = IB_SEND_SIGNALED;
 fastreg_wr.wr.fast_reg.iova_start = (unsigned long)frmr->kva;
 fastreg_wr.wr.fast_reg.page_list = frmr->page_list;
 fastreg_wr.wr.fast_reg.page_list_len = frmr->page_list_len;
 fastreg_wr.wr.fast_reg.page_shift = PAGE_SHIFT;
 fastreg_wr.wr.fast_reg.length = frmr->map_len;
 fastreg_wr.wr.fast_reg.access_flags = frmr->access_flags;
 fastreg_wr.wr.fast_reg.rkey = frmr->mr->lkey;
 return svc_rdma_send(xprt, &fastreg_wr);
}
