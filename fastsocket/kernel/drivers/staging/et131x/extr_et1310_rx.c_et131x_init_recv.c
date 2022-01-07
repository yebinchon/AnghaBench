
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct et131x_adapter {TYPE_1__* pdev; int RxRing; } ;
struct TYPE_9__ {int list_node; } ;
struct TYPE_8__ {scalar_t__ NumRfd; int RecvLookaside; int nReadyRecv; int RecvList; } ;
struct TYPE_7__ {int dev; } ;
typedef TYPE_2__ RX_RING_t ;
typedef TYPE_3__* PMP_RFD ;
typedef TYPE_3__ MP_RFD ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_DMA ;
 scalar_t__ NIC_MIN_NUM_RFD ;
 int dev_err (int *,char*) ;
 int et131x_rfd_resources_alloc (struct et131x_adapter*,TYPE_3__*) ;
 scalar_t__ kmem_cache_alloc (int ,int) ;
 int kmem_cache_free (int ,TYPE_3__*) ;
 int list_add_tail (int *,int *) ;

int et131x_init_recv(struct et131x_adapter *adapter)
{
 int status = -ENOMEM;
 PMP_RFD pMpRfd = ((void*)0);
 uint32_t RfdCount;
 uint32_t TotalNumRfd = 0;
 RX_RING_t *rx_ring = ((void*)0);


 rx_ring = (RX_RING_t *) &adapter->RxRing;


 for (RfdCount = 0; RfdCount < rx_ring->NumRfd; RfdCount++) {
  pMpRfd = (MP_RFD *) kmem_cache_alloc(rx_ring->RecvLookaside,
           GFP_ATOMIC | GFP_DMA);

  if (!pMpRfd) {
   dev_err(&adapter->pdev->dev,
      "Couldn't alloc RFD out of kmem_cache\n");
   status = -ENOMEM;
   continue;
  }

  status = et131x_rfd_resources_alloc(adapter, pMpRfd);
  if (status != 0) {
   dev_err(&adapter->pdev->dev,
      "Couldn't alloc packet for RFD\n");
   kmem_cache_free(rx_ring->RecvLookaside, pMpRfd);
   continue;
  }


  list_add_tail(&pMpRfd->list_node, &rx_ring->RecvList);


  rx_ring->nReadyRecv++;
  TotalNumRfd++;
 }

 if (TotalNumRfd > NIC_MIN_NUM_RFD)
  status = 0;

 rx_ring->NumRfd = TotalNumRfd;

 if (status != 0) {
  kmem_cache_free(rx_ring->RecvLookaside, pMpRfd);
  dev_err(&adapter->pdev->dev,
     "Allocation problems in et131x_init_recv\n");
 }
 return status;
}
