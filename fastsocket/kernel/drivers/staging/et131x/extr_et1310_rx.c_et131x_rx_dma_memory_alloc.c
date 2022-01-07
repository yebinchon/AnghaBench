
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_7__ {int PsrNumEntries; int Fbr0NumEntries; int Fbr1NumEntries; } ;
struct et131x_adapter {int RegistryJumboPacket; int Flags; TYPE_3__* netdev; TYPE_5__* pdev; TYPE_2__ RxRing; } ;
struct TYPE_10__ {int dev; } ;
struct TYPE_9__ {int Fbr0BufferSize; int Fbr0NumEntries; int Fbr1BufferSize; int Fbr1NumEntries; int pFbr1RingPa; int Fbr1Realpa; int Fbr1offset; int pFbr0RingPa; int Fbr0Realpa; int Fbr0offset; int* Fbr1MemPa; int* Fbr0MemPa; int pPSRingPa; int pPSRingRealPa; int pPSRingOffset; int pRxStatusPa; int RxStatusRealPA; int RxStatusOffset; int RecvPendingList; int RecvList; int RecvLookaside; int NumRfd; void* pRxStatusVa; void* pPSRingVa; TYPE_1__** Fbr; void** Fbr0MemVa; void** Fbr1MemVa; void* pFbr0RingVa; void* pFbr1RingVa; } ;
struct TYPE_8__ {int name; } ;
struct TYPE_6__ {int* PAHigh; int* PALow; int ** Va; int ** Buffer2; int ** Buffer1; } ;
typedef int RX_STATUS_BLOCK_t ;
typedef TYPE_4__ RX_RING_t ;
typedef int PKT_STAT_DESC_t ;
typedef int MP_RFD ;
typedef int FBR_DESC_t ;
typedef int FBRLOOKUPTABLE ;


 int ENOMEM ;
 int FBR_CHUNKS ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int NIC_DEFAULT_NUM_RFD ;
 int SLAB_CACHE_DMA ;
 int SLAB_HWCACHE_ALIGN ;
 int dev_err (int *,char*) ;
 int et131x_align_allocated_memory (struct et131x_adapter*,int*,int*,int) ;
 int fMP_ADAPTER_RECV_LOOKASIDE ;
 void* kmalloc (int,int ) ;
 int kmem_cache_create (int ,int,int ,int,int *) ;
 void* pci_alloc_consistent (TYPE_5__*,int,int*) ;

int et131x_rx_dma_memory_alloc(struct et131x_adapter *adapter)
{
 uint32_t OuterLoop, InnerLoop;
 uint32_t bufsize;
 uint32_t pktStatRingSize, FBRChunkSize;
 RX_RING_t *rx_ring;


 rx_ring = (RX_RING_t *) &adapter->RxRing;






 rx_ring->Fbr[1] = kmalloc(sizeof(FBRLOOKUPTABLE), GFP_KERNEL);
 if (adapter->RegistryJumboPacket < 2048) {




  rx_ring->Fbr1BufferSize = 2048;
  rx_ring->Fbr1NumEntries = 512;
 } else if (adapter->RegistryJumboPacket < 4096) {




  rx_ring->Fbr1BufferSize = 4096;
  rx_ring->Fbr1NumEntries = 512;
 } else {




  rx_ring->Fbr1BufferSize = 16384;
  rx_ring->Fbr1NumEntries = 128;
 }





 adapter->RxRing.PsrNumEntries = adapter->RxRing.Fbr1NumEntries;



 bufsize = (sizeof(FBR_DESC_t) * rx_ring->Fbr1NumEntries) + 0xfff;
 rx_ring->pFbr1RingVa = pci_alloc_consistent(adapter->pdev,
          bufsize,
          &rx_ring->pFbr1RingPa);
 if (!rx_ring->pFbr1RingVa) {
  dev_err(&adapter->pdev->dev,
     "Cannot alloc memory for Free Buffer Ring 1\n");
  return -ENOMEM;
 }
 rx_ring->Fbr1Realpa = rx_ring->pFbr1RingPa;


 et131x_align_allocated_memory(adapter,
          &rx_ring->Fbr1Realpa,
          &rx_ring->Fbr1offset, 0x0FFF);

 rx_ring->pFbr1RingVa = (void *)((uint8_t *) rx_ring->pFbr1RingVa +
     rx_ring->Fbr1offset);
 for (OuterLoop = 0; OuterLoop < (rx_ring->Fbr1NumEntries / FBR_CHUNKS);
      OuterLoop++) {
  uint64_t Fbr1Offset;
  uint64_t Fbr1TempPa;
  uint32_t Fbr1Align;
  if (rx_ring->Fbr1BufferSize > 4096)
   Fbr1Align = 4096;
  else
   Fbr1Align = rx_ring->Fbr1BufferSize;

  FBRChunkSize =
      (FBR_CHUNKS * rx_ring->Fbr1BufferSize) + Fbr1Align - 1;
  rx_ring->Fbr1MemVa[OuterLoop] =
      pci_alloc_consistent(adapter->pdev, FBRChunkSize,
      &rx_ring->Fbr1MemPa[OuterLoop]);

  if (!rx_ring->Fbr1MemVa[OuterLoop]) {
  dev_err(&adapter->pdev->dev,
    "Could not alloc memory\n");
   return -ENOMEM;
  }


  Fbr1TempPa = rx_ring->Fbr1MemPa[OuterLoop];

  et131x_align_allocated_memory(adapter,
           &Fbr1TempPa,
           &Fbr1Offset, (Fbr1Align - 1));

  for (InnerLoop = 0; InnerLoop < FBR_CHUNKS; InnerLoop++) {
   uint32_t index = (OuterLoop * FBR_CHUNKS) + InnerLoop;




   rx_ring->Fbr[1]->Va[index] =
       (uint8_t *) rx_ring->Fbr1MemVa[OuterLoop] +
       (InnerLoop * rx_ring->Fbr1BufferSize) + Fbr1Offset;




   rx_ring->Fbr[1]->PAHigh[index] =
       (uint32_t) (Fbr1TempPa >> 32);
   rx_ring->Fbr[1]->PALow[index] = (uint32_t) Fbr1TempPa;

   Fbr1TempPa += rx_ring->Fbr1BufferSize;

   rx_ring->Fbr[1]->Buffer1[index] =
       rx_ring->Fbr[1]->Va[index];
   rx_ring->Fbr[1]->Buffer2[index] =
       rx_ring->Fbr[1]->Va[index] - 4;
  }
 }
 pktStatRingSize =
     sizeof(PKT_STAT_DESC_t) * adapter->RxRing.PsrNumEntries;

 rx_ring->pPSRingVa = pci_alloc_consistent(adapter->pdev,
        pktStatRingSize + 0x0fff,
        &rx_ring->pPSRingPa);

 if (!rx_ring->pPSRingVa) {
  dev_err(&adapter->pdev->dev,
     "Cannot alloc memory for Packet Status Ring\n");
  return -ENOMEM;
 }
 rx_ring->pPSRingRealPa = rx_ring->pPSRingPa;


 et131x_align_allocated_memory(adapter,
          &rx_ring->pPSRingRealPa,
          &rx_ring->pPSRingOffset, 0x0FFF);

 rx_ring->pPSRingVa = (void *)((uint8_t *) rx_ring->pPSRingVa +
          rx_ring->pPSRingOffset);


 rx_ring->pRxStatusVa = pci_alloc_consistent(adapter->pdev,
          sizeof(RX_STATUS_BLOCK_t) +
          0x7, &rx_ring->pRxStatusPa);
 if (!rx_ring->pRxStatusVa) {
  dev_err(&adapter->pdev->dev,
     "Cannot alloc memory for Status Block\n");
  return -ENOMEM;
 }


 rx_ring->RxStatusRealPA = rx_ring->pRxStatusPa;


 et131x_align_allocated_memory(adapter,
          &rx_ring->RxStatusRealPA,
          &rx_ring->RxStatusOffset, 0x07);

 rx_ring->pRxStatusVa = (void *)((uint8_t *) rx_ring->pRxStatusVa +
     rx_ring->RxStatusOffset);
 rx_ring->NumRfd = NIC_DEFAULT_NUM_RFD;







 rx_ring->RecvLookaside = kmem_cache_create(adapter->netdev->name,
         sizeof(MP_RFD),
         0,
         SLAB_CACHE_DMA |
         SLAB_HWCACHE_ALIGN,
         ((void*)0));

 adapter->Flags |= fMP_ADAPTER_RECV_LOOKASIDE;




 INIT_LIST_HEAD(&rx_ring->RecvList);
 INIT_LIST_HEAD(&rx_ring->RecvPendingList);
 return 0;
}
