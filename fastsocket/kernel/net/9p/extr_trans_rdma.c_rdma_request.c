
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct p9_trans_rdma {scalar_t__ rq_depth; scalar_t__ state; int req_lock; TYPE_2__* cm_id; int qp; int sq_sem; int lkey; int rq_count; } ;
struct p9_req_t {TYPE_1__* tc; struct p9_rdma_context* rc; } ;
struct p9_rdma_context {char* sdata; int capacity; int wc_op; struct p9_req_t* req; int busa; struct p9_rdma_context* rc; } ;
struct p9_fcall {int dummy; } ;
struct p9_client {int msize; struct p9_trans_rdma* trans; } ;
struct ib_sge {int lkey; int length; int addr; } ;
struct ib_send_wr {unsigned long wr_id; int num_sge; struct ib_sge* sg_list; int send_flags; int opcode; int * next; } ;
struct TYPE_4__ {int device; } ;
struct TYPE_3__ {int size; int sdata; } ;


 int DMA_TO_DEVICE ;
 int EIO ;
 int GFP_KERNEL ;
 int IB_SEND_SIGNALED ;
 int IB_WC_SEND ;
 int IB_WR_SEND ;
 int P9_DEBUG_ERROR ;
 int P9_DPRINTK (int ,char*) ;
 scalar_t__ P9_RDMA_CLOSING ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_inc_return (int *) ;
 scalar_t__ down_interruptible (int *) ;
 int ib_dma_map_single (int ,int ,int ,int ) ;
 scalar_t__ ib_dma_mapping_error (int ,int ) ;
 int ib_post_send (int ,struct ib_send_wr*,struct ib_send_wr**) ;
 int kfree (struct p9_rdma_context*) ;
 void* kmalloc (int,int ) ;
 int post_recv (struct p9_client*,struct p9_rdma_context*) ;
 int rdma_disconnect (TYPE_2__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int rdma_request(struct p9_client *client, struct p9_req_t *req)
{
 struct p9_trans_rdma *rdma = client->trans;
 struct ib_send_wr wr, *bad_wr;
 struct ib_sge sge;
 int err = 0;
 unsigned long flags;
 struct p9_rdma_context *c = ((void*)0);
 struct p9_rdma_context *rpl_context = ((void*)0);


 rpl_context = kmalloc(sizeof *rpl_context, GFP_KERNEL);
 if (!rpl_context)
  goto err_close;






 if (!req->rc) {
  req->rc = kmalloc(sizeof(struct p9_fcall)+client->msize,
        GFP_KERNEL);
  if (req->rc) {
   req->rc->sdata = (char *) req->rc +
      sizeof(struct p9_fcall);
   req->rc->capacity = client->msize;
  }
 }
 rpl_context->rc = req->rc;
 if (!rpl_context->rc) {
  kfree(rpl_context);
  goto err_close;
 }
 if (atomic_inc_return(&rdma->rq_count) <= rdma->rq_depth) {
  err = post_recv(client, rpl_context);
  if (err) {
   kfree(rpl_context->rc);
   kfree(rpl_context);
   goto err_close;
  }
 } else
  atomic_dec(&rdma->rq_count);


 req->rc = ((void*)0);


 c = kmalloc(sizeof *c, GFP_KERNEL);
 if (!c)
  goto err_close;
 c->req = req;

 c->busa = ib_dma_map_single(rdma->cm_id->device,
        c->req->tc->sdata, c->req->tc->size,
        DMA_TO_DEVICE);
 if (ib_dma_mapping_error(rdma->cm_id->device, c->busa))
  goto error;

 sge.addr = c->busa;
 sge.length = c->req->tc->size;
 sge.lkey = rdma->lkey;

 wr.next = ((void*)0);
 c->wc_op = IB_WC_SEND;
 wr.wr_id = (unsigned long) c;
 wr.opcode = IB_WR_SEND;
 wr.send_flags = IB_SEND_SIGNALED;
 wr.sg_list = &sge;
 wr.num_sge = 1;

 if (down_interruptible(&rdma->sq_sem))
  goto error;

 return ib_post_send(rdma->qp, &wr, &bad_wr);

 error:
 P9_DPRINTK(P9_DEBUG_ERROR, "EIO\n");
 return -EIO;

 err_close:
 spin_lock_irqsave(&rdma->req_lock, flags);
 if (rdma->state < P9_RDMA_CLOSING) {
  rdma->state = P9_RDMA_CLOSING;
  spin_unlock_irqrestore(&rdma->req_lock, flags);
  rdma_disconnect(rdma->cm_id);
 } else
  spin_unlock_irqrestore(&rdma->req_lock, flags);
 return err;
}
