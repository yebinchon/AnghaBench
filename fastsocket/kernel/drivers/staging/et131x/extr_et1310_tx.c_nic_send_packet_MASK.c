#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_9__ ;
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_11__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
typedef  int uint32_t ;
struct skb_frag_struct {int size; int /*<<< orphan*/  page_offset; int /*<<< orphan*/  page; } ;
struct sk_buff {int len; int data_len; scalar_t__ data; } ;
struct TYPE_19__ {scalar_t__ TxPacketsSinceLastinterrupt; int txDmaReadyToSend; scalar_t__ pTxDescRingVa; int /*<<< orphan*/  nBusySend; TYPE_10__* CurrSendTail; TYPE_10__* CurrSendHead; } ;
struct et131x_adapter {scalar_t__ linkspeed; int /*<<< orphan*/  SendHWLock; TYPE_6__* regs; TYPE_3__ TxRing; int /*<<< orphan*/  TCBSendQLock; int /*<<< orphan*/  pdev; } ;
struct TYPE_17__ {int f; } ;
struct TYPE_18__ {int value; TYPE_1__ bits; } ;
struct TYPE_23__ {int length_in_bytes; } ;
struct TYPE_24__ {TYPE_7__ bits; } ;
struct TYPE_25__ {TYPE_2__ word3; void* DataBufferPtrLow; TYPE_8__ word2; scalar_t__ DataBufferPtrHigh; } ;
struct TYPE_21__ {int /*<<< orphan*/  watchdog_timer; } ;
struct TYPE_20__ {int /*<<< orphan*/  service_request; } ;
struct TYPE_22__ {TYPE_5__ global; TYPE_4__ txdma; } ;
struct TYPE_16__ {int nr_frags; struct skb_frag_struct* frags; } ;
struct TYPE_15__ {int WrIndexStart; int WrIndex; struct TYPE_15__* Next; scalar_t__ PacketStaleCount; struct sk_buff* Packet; } ;
typedef  TYPE_9__ TX_DESC_ENTRY_t ;
typedef  TYPE_10__* PMP_TCB ;

/* Variables and functions */
 int EIO ; 
 int ET_DMA10_MASK ; 
 int ET_DMA10_WRAP ; 
 scalar_t__ FUNC0 (int) ; 
 int NANO_IN_A_MICRO ; 
 int NUM_DESC_PER_RING_TX ; 
 scalar_t__ PARM_TX_NUM_BUFS_DEF ; 
 int PARM_TX_TIME_INT_DEF ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 scalar_t__ TRUEPHY_SPEED_1000MBPS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,TYPE_9__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_9__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 TYPE_11__* FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct et131x_adapter *etdev, PMP_TCB pMpTcb)
{
	uint32_t loopIndex;
	TX_DESC_ENTRY_t CurDesc[24];
	uint32_t FragmentNumber = 0;
	uint32_t thiscopy, remainder;
	struct sk_buff *pPacket = pMpTcb->Packet;
	uint32_t FragListCount = FUNC7(pPacket)->nr_frags + 1;
	struct skb_frag_struct *pFragList = &FUNC7(pPacket)->frags[0];
	unsigned long flags;

	/* Part of the optimizations of this send routine restrict us to
	 * sending 24 fragments at a pass.  In practice we should never see
	 * more than 5 fragments.
	 *
	 * NOTE: The older version of this function (below) can handle any
	 * number of fragments. If needed, we can call this function,
	 * although it is less efficient.
	 */
	if (FragListCount > 23) {
		return -EIO;
	}

	FUNC4(CurDesc, 0, sizeof(TX_DESC_ENTRY_t) * (FragListCount + 1));

	for (loopIndex = 0; loopIndex < FragListCount; loopIndex++) {
		/* If there is something in this element, lets get a
		 * descriptor from the ring and get the necessary data
		 */
		if (loopIndex == 0) {
			/* If the fragments are smaller than a standard MTU,
			 * then map them to a single descriptor in the Tx
			 * Desc ring. However, if they're larger, as is
			 * possible with support for jumbo packets, then
			 * split them each across 2 descriptors.
			 *
			 * This will work until we determine why the hardware
			 * doesn't seem to like large fragments.
			 */
			if ((pPacket->len - pPacket->data_len) <= 1514) {
				CurDesc[FragmentNumber].DataBufferPtrHigh = 0;
				CurDesc[FragmentNumber].word2.bits.
				    length_in_bytes =
				    pPacket->len - pPacket->data_len;

				/* NOTE: Here, the dma_addr_t returned from
				 * pci_map_single() is implicitly cast as a
				 * uint32_t. Although dma_addr_t can be
				 * 64-bit, the address returned by
				 * pci_map_single() is always 32-bit
				 * addressable (as defined by the pci/dma
				 * subsystem)
				 */
				CurDesc[FragmentNumber++].DataBufferPtrLow =
				    FUNC6(etdev->pdev,
						   pPacket->data,
						   pPacket->len -
						   pPacket->data_len,
						   PCI_DMA_TODEVICE);
			} else {
				CurDesc[FragmentNumber].DataBufferPtrHigh = 0;
				CurDesc[FragmentNumber].word2.bits.
				    length_in_bytes =
				    ((pPacket->len - pPacket->data_len) / 2);

				/* NOTE: Here, the dma_addr_t returned from
				 * pci_map_single() is implicitly cast as a
				 * uint32_t. Although dma_addr_t can be
				 * 64-bit, the address returned by
				 * pci_map_single() is always 32-bit
				 * addressable (as defined by the pci/dma
				 * subsystem)
				 */
				CurDesc[FragmentNumber++].DataBufferPtrLow =
				    FUNC6(etdev->pdev,
						   pPacket->data,
						   ((pPacket->len -
						     pPacket->data_len) / 2),
						   PCI_DMA_TODEVICE);
				CurDesc[FragmentNumber].DataBufferPtrHigh = 0;

				CurDesc[FragmentNumber].word2.bits.
				    length_in_bytes =
				    ((pPacket->len - pPacket->data_len) / 2);

				/* NOTE: Here, the dma_addr_t returned from
				 * pci_map_single() is implicitly cast as a
				 * uint32_t. Although dma_addr_t can be
				 * 64-bit, the address returned by
				 * pci_map_single() is always 32-bit
				 * addressable (as defined by the pci/dma
				 * subsystem)
				 */
				CurDesc[FragmentNumber++].DataBufferPtrLow =
				    FUNC6(etdev->pdev,
						   pPacket->data +
						   ((pPacket->len -
						     pPacket->data_len) / 2),
						   ((pPacket->len -
						     pPacket->data_len) / 2),
						   PCI_DMA_TODEVICE);
			}
		} else {
			CurDesc[FragmentNumber].DataBufferPtrHigh = 0;
			CurDesc[FragmentNumber].word2.bits.length_in_bytes =
			    pFragList[loopIndex - 1].size;

			/* NOTE: Here, the dma_addr_t returned from
			 * pci_map_page() is implicitly cast as a uint32_t.
			 * Although dma_addr_t can be 64-bit, the address
			 * returned by pci_map_page() is always 32-bit
			 * addressable (as defined by the pci/dma subsystem)
			 */
			CurDesc[FragmentNumber++].DataBufferPtrLow =
			    FUNC5(etdev->pdev,
					 pFragList[loopIndex - 1].page,
					 pFragList[loopIndex - 1].page_offset,
					 pFragList[loopIndex - 1].size,
					 PCI_DMA_TODEVICE);
		}
	}

	if (FragmentNumber == 0)
		return -EIO;

	if (etdev->linkspeed == TRUEPHY_SPEED_1000MBPS) {
		if (++etdev->TxRing.TxPacketsSinceLastinterrupt ==
		    PARM_TX_NUM_BUFS_DEF) {
			CurDesc[FragmentNumber - 1].word3.value = 0x5;
			etdev->TxRing.TxPacketsSinceLastinterrupt = 0;
		} else {
			CurDesc[FragmentNumber - 1].word3.value = 0x1;
		}
	} else {
		CurDesc[FragmentNumber - 1].word3.value = 0x5;
	}

	CurDesc[0].word3.bits.f = 1;

	pMpTcb->WrIndexStart = etdev->TxRing.txDmaReadyToSend;
	pMpTcb->PacketStaleCount = 0;

	FUNC9(&etdev->SendHWLock, flags);

	thiscopy = NUM_DESC_PER_RING_TX -
				FUNC0(etdev->TxRing.txDmaReadyToSend);

	if (thiscopy >= FragmentNumber) {
		remainder = 0;
		thiscopy = FragmentNumber;
	} else {
		remainder = FragmentNumber - thiscopy;
	}

	FUNC3(etdev->TxRing.pTxDescRingVa +
	       FUNC0(etdev->TxRing.txDmaReadyToSend), CurDesc,
	       sizeof(TX_DESC_ENTRY_t) * thiscopy);

	FUNC2(&etdev->TxRing.txDmaReadyToSend, thiscopy);

	if (FUNC0(etdev->TxRing.txDmaReadyToSend)== 0 ||
	    FUNC0(etdev->TxRing.txDmaReadyToSend) == NUM_DESC_PER_RING_TX) {
	     	etdev->TxRing.txDmaReadyToSend &= ~ET_DMA10_MASK;
	     	etdev->TxRing.txDmaReadyToSend ^= ET_DMA10_WRAP;
	}

	if (remainder) {
		FUNC3(etdev->TxRing.pTxDescRingVa,
		       CurDesc + thiscopy,
		       sizeof(TX_DESC_ENTRY_t) * remainder);

		FUNC2(&etdev->TxRing.txDmaReadyToSend, remainder);
	}

	if (FUNC0(etdev->TxRing.txDmaReadyToSend) == 0) {
		if (etdev->TxRing.txDmaReadyToSend)
			pMpTcb->WrIndex = NUM_DESC_PER_RING_TX - 1;
		else
			pMpTcb->WrIndex= ET_DMA10_WRAP | (NUM_DESC_PER_RING_TX - 1);
	} else
		pMpTcb->WrIndex = etdev->TxRing.txDmaReadyToSend - 1;

	FUNC8(&etdev->TCBSendQLock);

	if (etdev->TxRing.CurrSendTail)
		etdev->TxRing.CurrSendTail->Next = pMpTcb;
	else
		etdev->TxRing.CurrSendHead = pMpTcb;

	etdev->TxRing.CurrSendTail = pMpTcb;

	FUNC1(pMpTcb->Next != NULL);

	etdev->TxRing.nBusySend++;

	FUNC10(&etdev->TCBSendQLock);

	/* Write the new write pointer back to the device. */
	FUNC12(etdev->TxRing.txDmaReadyToSend,
	       &etdev->regs->txdma.service_request);

	/* For Gig only, we use Tx Interrupt coalescing.  Enable the software
	 * timer to wake us up if this packet isn't followed by N more.
	 */
	if (etdev->linkspeed == TRUEPHY_SPEED_1000MBPS) {
		FUNC12(PARM_TX_TIME_INT_DEF * NANO_IN_A_MICRO,
		       &etdev->regs->global.watchdog_timer);
	}
	FUNC11(&etdev->SendHWLock, flags);

	return 0;
}