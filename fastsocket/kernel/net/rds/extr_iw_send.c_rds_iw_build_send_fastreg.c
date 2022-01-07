
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_7__ {int length; int page_list_len; int iova_start; int access_flags; int page_shift; TYPE_1__* page_list; int rkey; } ;
struct TYPE_8__ {TYPE_2__ fast_reg; } ;
struct TYPE_9__ {TYPE_3__ wr; int opcode; } ;
struct rds_iw_send_work {int s_remap_count; TYPE_5__* s_mr; TYPE_4__ s_wr; TYPE_1__* s_page_list; } ;
struct rds_iw_device {int dummy; } ;
struct rds_iw_connection {int dummy; } ;
struct TYPE_10__ {int rkey; } ;
struct TYPE_6__ {int max_page_list_len; } ;


 int BUG_ON (int) ;
 int IB_ACCESS_REMOTE_WRITE ;
 int IB_WR_FAST_REG_MR ;
 int PAGE_SHIFT ;
 int ib_update_fast_reg_key (TYPE_5__*,int ) ;

__attribute__((used)) static void rds_iw_build_send_fastreg(struct rds_iw_device *rds_iwdev, struct rds_iw_connection *ic, struct rds_iw_send_work *send, int nent, int len, u64 sg_addr)
{
 BUG_ON(nent > send->s_page_list->max_page_list_len);





 send->s_wr.opcode = IB_WR_FAST_REG_MR;
 send->s_wr.wr.fast_reg.length = len;
 send->s_wr.wr.fast_reg.rkey = send->s_mr->rkey;
 send->s_wr.wr.fast_reg.page_list = send->s_page_list;
 send->s_wr.wr.fast_reg.page_list_len = nent;
 send->s_wr.wr.fast_reg.page_shift = PAGE_SHIFT;
 send->s_wr.wr.fast_reg.access_flags = IB_ACCESS_REMOTE_WRITE;
 send->s_wr.wr.fast_reg.iova_start = sg_addr;

 ib_update_fast_reg_key(send->s_mr, send->s_remap_count++);
}
