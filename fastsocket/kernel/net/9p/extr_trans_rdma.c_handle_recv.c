
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct p9_trans_rdma {int state; TYPE_1__* cm_id; } ;
struct p9_req_t {int status; int rc; } ;
struct p9_rdma_context {int rc; int busa; } ;
struct p9_client {int status; int msize; } ;
typedef int int16_t ;
typedef enum ib_wc_status { ____Placeholder_ib_wc_status } ib_wc_status ;
struct TYPE_2__ {int device; } ;


 int DMA_FROM_DEVICE ;
 int Disconnected ;
 int IB_WC_SUCCESS ;
 int P9_DEBUG_ERROR ;
 int P9_DPRINTK (int ,char*,struct p9_req_t*,int,int) ;
 int P9_RDMA_FLUSHING ;
 int REQ_STATUS_RCVD ;
 int ib_dma_unmap_single (int ,int ,int ,int ) ;
 int p9_client_cb (struct p9_client*,struct p9_req_t*) ;
 int p9_parse_header (int ,int *,int *,int *,int) ;
 struct p9_req_t* p9_tag_lookup (struct p9_client*,int ) ;

__attribute__((used)) static void
handle_recv(struct p9_client *client, struct p9_trans_rdma *rdma,
     struct p9_rdma_context *c, enum ib_wc_status status, u32 byte_len)
{
 struct p9_req_t *req;
 int err = 0;
 int16_t tag;

 req = ((void*)0);
 ib_dma_unmap_single(rdma->cm_id->device, c->busa, client->msize,
        DMA_FROM_DEVICE);

 if (status != IB_WC_SUCCESS)
  goto err_out;

 err = p9_parse_header(c->rc, ((void*)0), ((void*)0), &tag, 1);
 if (err)
  goto err_out;

 req = p9_tag_lookup(client, tag);
 if (!req)
  goto err_out;

 req->rc = c->rc;
 req->status = REQ_STATUS_RCVD;
 p9_client_cb(client, req);

 return;

 err_out:
 P9_DPRINTK(P9_DEBUG_ERROR, "req %p err %d status %d\n",
     req, err, status);
 rdma->state = P9_RDMA_FLUSHING;
 client->status = Disconnected;
 return;
}
