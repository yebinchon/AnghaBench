
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct svcxprt_rdma {int sc_dma_lkey; int sc_dma_used; TYPE_1__* sc_cm_id; } ;
struct svc_rdma_op_ctxt {int count; TYPE_2__* sge; void* wr_op; struct page** pages; int direction; } ;
struct rpcrdma_msg {int dummy; } ;
struct page {int dummy; } ;
struct ib_send_wr {unsigned long wr_id; int num_sge; int send_flags; void* opcode; TYPE_2__* sg_list; } ;
typedef enum rpcrdma_errcode { ____Placeholder_rpcrdma_errcode } rpcrdma_errcode ;
struct TYPE_4__ {int length; int lkey; int addr; } ;
struct TYPE_3__ {int device; } ;


 int DMA_FROM_DEVICE ;
 int IB_SEND_SIGNALED ;
 void* IB_WR_SEND ;
 int atomic_inc (int *) ;
 int dprintk (char*,int) ;
 int ib_dma_map_page (int ,struct page*,int ,int,int ) ;
 scalar_t__ ib_dma_mapping_error (int ,int ) ;
 int memset (struct ib_send_wr*,int ,int) ;
 int * page_address (struct page*) ;
 int put_page (struct page*) ;
 struct svc_rdma_op_ctxt* svc_rdma_get_context (struct svcxprt_rdma*) ;
 struct page* svc_rdma_get_page () ;
 int svc_rdma_put_context (struct svc_rdma_op_ctxt*,int) ;
 int svc_rdma_send (struct svcxprt_rdma*,struct ib_send_wr*) ;
 int svc_rdma_unmap_dma (struct svc_rdma_op_ctxt*) ;
 int svc_rdma_xdr_encode_error (struct svcxprt_rdma*,struct rpcrdma_msg*,int,int *) ;

void svc_rdma_send_error(struct svcxprt_rdma *xprt, struct rpcrdma_msg *rmsgp,
    enum rpcrdma_errcode err)
{
 struct ib_send_wr err_wr;
 struct page *p;
 struct svc_rdma_op_ctxt *ctxt;
 u32 *va;
 int length;
 int ret;

 p = svc_rdma_get_page();
 va = page_address(p);


 length = svc_rdma_xdr_encode_error(xprt, rmsgp, err, va);

 ctxt = svc_rdma_get_context(xprt);
 ctxt->direction = DMA_FROM_DEVICE;
 ctxt->count = 1;
 ctxt->pages[0] = p;


 ctxt->sge[0].addr = ib_dma_map_page(xprt->sc_cm_id->device,
         p, 0, length, DMA_FROM_DEVICE);
 if (ib_dma_mapping_error(xprt->sc_cm_id->device, ctxt->sge[0].addr)) {
  put_page(p);
  svc_rdma_put_context(ctxt, 1);
  return;
 }
 atomic_inc(&xprt->sc_dma_used);
 ctxt->sge[0].lkey = xprt->sc_dma_lkey;
 ctxt->sge[0].length = length;


 memset(&err_wr, 0, sizeof err_wr);
 ctxt->wr_op = IB_WR_SEND;
 err_wr.wr_id = (unsigned long)ctxt;
 err_wr.sg_list = ctxt->sge;
 err_wr.num_sge = 1;
 err_wr.opcode = IB_WR_SEND;
 err_wr.send_flags = IB_SEND_SIGNALED;


 ret = svc_rdma_send(xprt, &err_wr);
 if (ret) {
  dprintk("svcrdma: Error %d posting send for protocol error\n",
   ret);
  svc_rdma_unmap_dma(ctxt);
  svc_rdma_put_context(ctxt, 1);
 }
}
