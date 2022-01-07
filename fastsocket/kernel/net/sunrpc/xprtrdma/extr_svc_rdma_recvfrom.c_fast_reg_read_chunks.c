
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct svcxprt_rdma {int sc_dma_used; TYPE_1__* sc_cm_id; } ;
struct TYPE_12__ {int * pages; scalar_t__ buflen; scalar_t__ len; int * tail; int * head; } ;
struct svc_rqst {TYPE_4__ rq_arg; int * rq_respages; } ;
struct svc_rdma_req_map {TYPE_7__* ch; TYPE_6__* sge; } ;
struct TYPE_11__ {int page_len; int * pages; scalar_t__ buflen; scalar_t__ len; scalar_t__ page_base; int * tail; int * head; } ;
struct svc_rdma_op_ctxt {size_t count; size_t hdr_count; TYPE_3__ arg; int * pages; struct svc_rdma_fastreg_mr* frmr; } ;
struct svc_rdma_fastreg_mr {int access_flags; int map_len; int page_list_len; scalar_t__ kva; TYPE_2__* page_list; int direction; } ;
struct TYPE_16__ {scalar_t__ rs_length; } ;
struct rpcrdma_read_chunk {TYPE_8__ rc_target; } ;
struct TYPE_13__ {int * rm_chunks; } ;
struct rpcrdma_msg {TYPE_5__ rm_body; } ;
struct TYPE_15__ {int count; int start; } ;
struct TYPE_14__ {scalar_t__ iov_len; scalar_t__ iov_base; } ;
struct TYPE_10__ {int * page_list; } ;
struct TYPE_9__ {int device; } ;


 int DMA_FROM_DEVICE ;
 int EIO ;
 int ENOMEM ;
 int IB_ACCESS_LOCAL_WRITE ;
 int IB_ACCESS_REMOTE_WRITE ;
 scalar_t__ IS_ERR (struct svc_rdma_fastreg_mr*) ;
 int PAGE_ALIGN (int) ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int atomic_inc (int *) ;
 int ib_dma_map_page (int ,int ,int ,int ,int ) ;
 scalar_t__ ib_dma_mapping_error (int ,int ) ;
 scalar_t__ page_address (int ) ;
 int printk (char*,struct svcxprt_rdma*) ;
 int svc_rdma_fastreg (struct svcxprt_rdma*,struct svc_rdma_fastreg_mr*) ;
 struct svc_rdma_fastreg_mr* svc_rdma_get_frmr (struct svcxprt_rdma*) ;
 int svc_rdma_put_frmr (struct svcxprt_rdma*,struct svc_rdma_fastreg_mr*) ;

__attribute__((used)) static int fast_reg_read_chunks(struct svcxprt_rdma *xprt,
    struct svc_rqst *rqstp,
    struct svc_rdma_op_ctxt *head,
    struct rpcrdma_msg *rmsgp,
    struct svc_rdma_req_map *rpl_map,
    struct svc_rdma_req_map *chl_map,
    int ch_count,
    int byte_count)
{
 int page_no;
 int ch_no;
 u32 offset;
 struct rpcrdma_read_chunk *ch;
 struct svc_rdma_fastreg_mr *frmr;
 int ret = 0;

 frmr = svc_rdma_get_frmr(xprt);
 if (IS_ERR(frmr))
  return -ENOMEM;

 head->frmr = frmr;
 head->arg.head[0] = rqstp->rq_arg.head[0];
 head->arg.tail[0] = rqstp->rq_arg.tail[0];
 head->arg.pages = &head->pages[head->count];
 head->hdr_count = head->count;
 head->arg.page_base = 0;
 head->arg.page_len = byte_count;
 head->arg.len = rqstp->rq_arg.len + byte_count;
 head->arg.buflen = rqstp->rq_arg.buflen + byte_count;


 frmr->kva = page_address(rqstp->rq_arg.pages[0]);
 frmr->direction = DMA_FROM_DEVICE;
 frmr->access_flags = (IB_ACCESS_LOCAL_WRITE|IB_ACCESS_REMOTE_WRITE);
 frmr->map_len = byte_count;
 frmr->page_list_len = PAGE_ALIGN(byte_count) >> PAGE_SHIFT;
 for (page_no = 0; page_no < frmr->page_list_len; page_no++) {
  frmr->page_list->page_list[page_no] =
   ib_dma_map_page(xprt->sc_cm_id->device,
     rqstp->rq_arg.pages[page_no], 0,
     PAGE_SIZE, DMA_FROM_DEVICE);
  if (ib_dma_mapping_error(xprt->sc_cm_id->device,
      frmr->page_list->page_list[page_no]))
   goto fatal_err;
  atomic_inc(&xprt->sc_dma_used);
  head->arg.pages[page_no] = rqstp->rq_arg.pages[page_no];
 }
 head->count += page_no;


 rqstp->rq_respages = &rqstp->rq_arg.pages[page_no];


 offset = 0;
 ch = (struct rpcrdma_read_chunk *)&rmsgp->rm_body.rm_chunks[0];
 for (ch_no = 0; ch_no < ch_count; ch_no++) {
  rpl_map->sge[ch_no].iov_base = frmr->kva + offset;
  rpl_map->sge[ch_no].iov_len = ch->rc_target.rs_length;
  chl_map->ch[ch_no].count = 1;
  chl_map->ch[ch_no].start = ch_no;
  offset += ch->rc_target.rs_length;
  ch++;
 }

 ret = svc_rdma_fastreg(xprt, frmr);
 if (ret)
  goto fatal_err;

 return ch_no;

 fatal_err:
 printk("svcrdma: error fast registering xdr for xprt %p", xprt);
 svc_rdma_put_frmr(xprt, frmr);
 return -EIO;
}
