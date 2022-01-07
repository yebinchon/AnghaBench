
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct p9_trans_rdma {TYPE_1__* cm_id; } ;
struct p9_rdma_context {TYPE_3__* req; int busa; } ;
struct p9_client {int dummy; } ;
typedef enum ib_wc_status { ____Placeholder_ib_wc_status } ib_wc_status ;
struct TYPE_6__ {TYPE_2__* tc; } ;
struct TYPE_5__ {int size; } ;
struct TYPE_4__ {int device; } ;


 int DMA_TO_DEVICE ;
 int ib_dma_unmap_single (int ,int ,int ,int ) ;

__attribute__((used)) static void
handle_send(struct p9_client *client, struct p9_trans_rdma *rdma,
     struct p9_rdma_context *c, enum ib_wc_status status, u32 byte_len)
{
 ib_dma_unmap_single(rdma->cm_id->device,
       c->busa, c->req->tc->size,
       DMA_TO_DEVICE);
}
