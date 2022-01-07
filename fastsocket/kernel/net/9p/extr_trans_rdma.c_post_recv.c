
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct p9_trans_rdma {int qp; int lkey; TYPE_2__* cm_id; } ;
struct p9_rdma_context {int wc_op; int busa; TYPE_1__* rc; } ;
struct p9_client {int msize; struct p9_trans_rdma* trans; } ;
struct ib_sge {int lkey; int length; int addr; } ;
struct ib_recv_wr {unsigned long wr_id; int num_sge; struct ib_sge* sg_list; int * next; } ;
struct TYPE_4__ {int device; } ;
struct TYPE_3__ {int sdata; } ;


 int DMA_FROM_DEVICE ;
 int EIO ;
 int IB_WC_RECV ;
 int P9_DEBUG_ERROR ;
 int P9_DPRINTK (int ,char*) ;
 int ib_dma_map_single (int ,int ,int ,int ) ;
 scalar_t__ ib_dma_mapping_error (int ,int ) ;
 int ib_post_recv (int ,struct ib_recv_wr*,struct ib_recv_wr**) ;

__attribute__((used)) static int
post_recv(struct p9_client *client, struct p9_rdma_context *c)
{
 struct p9_trans_rdma *rdma = client->trans;
 struct ib_recv_wr wr, *bad_wr;
 struct ib_sge sge;

 c->busa = ib_dma_map_single(rdma->cm_id->device,
        c->rc->sdata, client->msize,
        DMA_FROM_DEVICE);
 if (ib_dma_mapping_error(rdma->cm_id->device, c->busa))
  goto error;

 sge.addr = c->busa;
 sge.length = client->msize;
 sge.lkey = rdma->lkey;

 wr.next = ((void*)0);
 c->wc_op = IB_WC_RECV;
 wr.wr_id = (unsigned long) c;
 wr.sg_list = &sge;
 wr.num_sge = 1;
 return ib_post_recv(rdma->qp, &wr, &bad_wr);

 error:
 P9_DPRINTK(P9_DEBUG_ERROR, "EIO\n");
 return -EIO;
}
