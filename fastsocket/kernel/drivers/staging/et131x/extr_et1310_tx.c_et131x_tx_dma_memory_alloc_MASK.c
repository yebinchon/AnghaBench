#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  pTxDummyBlkPa; void* pTxDummyBlkVa; int /*<<< orphan*/  pTxStatusPa; void* pTxStatusVa; scalar_t__ TxDescOffset; scalar_t__ pTxDescRingVa; int /*<<< orphan*/  pTxDescRingAdjustedPa; int /*<<< orphan*/  pTxDescRingPa; int /*<<< orphan*/ * MpTcbMem; } ;
struct et131x_adapter {TYPE_2__* pdev; TYPE_1__ TxRing; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  TX_STATUS_BLOCK_t ;
typedef  TYPE_1__ TX_RING_t ;
typedef  int /*<<< orphan*/  TX_DESC_ENTRY_t ;
typedef  scalar_t__ PTX_DESC_ENTRY_t ;
typedef  int /*<<< orphan*/  MP_TCB ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_ATOMIC ; 
 int GFP_DMA ; 
 int NIC_MIN_PACKET_SIZE ; 
 int NUM_DESC_PER_RING_TX ; 
 int /*<<< orphan*/  NUM_TCB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct et131x_adapter*,int /*<<< orphan*/ *,scalar_t__*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 void* FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 

int FUNC4(struct et131x_adapter *adapter)
{
	int desc_size = 0;
	TX_RING_t *tx_ring = &adapter->TxRing;

	/* Allocate memory for the TCB's (Transmit Control Block) */
	adapter->TxRing.MpTcbMem = (MP_TCB *)FUNC2(NUM_TCB, sizeof(MP_TCB),
						      GFP_ATOMIC | GFP_DMA);
	if (!adapter->TxRing.MpTcbMem) {
		FUNC0(&adapter->pdev->dev, "Cannot alloc memory for TCBs\n");
		return -ENOMEM;
	}

	/* Allocate enough memory for the Tx descriptor ring, and allocate
	 * some extra so that the ring can be aligned on a 4k boundary.
	 */
	desc_size = (sizeof(TX_DESC_ENTRY_t) * NUM_DESC_PER_RING_TX) + 4096 - 1;
	tx_ring->pTxDescRingVa =
	    (PTX_DESC_ENTRY_t) FUNC3(adapter->pdev, desc_size,
						    &tx_ring->pTxDescRingPa);
	if (!adapter->TxRing.pTxDescRingVa) {
		FUNC0(&adapter->pdev->dev, "Cannot alloc memory for Tx Ring\n");
		return -ENOMEM;
	}

	/* Save physical address
	 *
	 * NOTE: pci_alloc_consistent(), used above to alloc DMA regions,
	 * ALWAYS returns SAC (32-bit) addresses. If DAC (64-bit) addresses
	 * are ever returned, make sure the high part is retrieved here before
	 * storing the adjusted address.
	 */
	tx_ring->pTxDescRingAdjustedPa = tx_ring->pTxDescRingPa;

	/* Align Tx Descriptor Ring on a 4k (0x1000) byte boundary */
	FUNC1(adapter,
				      &tx_ring->pTxDescRingAdjustedPa,
				      &tx_ring->TxDescOffset, 0x0FFF);

	tx_ring->pTxDescRingVa += tx_ring->TxDescOffset;

	/* Allocate memory for the Tx status block */
	tx_ring->pTxStatusVa = FUNC3(adapter->pdev,
						    sizeof(TX_STATUS_BLOCK_t),
						    &tx_ring->pTxStatusPa);
	if (!adapter->TxRing.pTxStatusPa) {
		FUNC0(&adapter->pdev->dev,
				  "Cannot alloc memory for Tx status block\n");
		return -ENOMEM;
	}

	/* Allocate memory for a dummy buffer */
	tx_ring->pTxDummyBlkVa = FUNC3(adapter->pdev,
						      NIC_MIN_PACKET_SIZE,
						      &tx_ring->pTxDummyBlkPa);
	if (!adapter->TxRing.pTxDummyBlkPa) {
		FUNC0(&adapter->pdev->dev,
			"Cannot alloc memory for Tx dummy buffer\n");
		return -ENOMEM;
	}

	return 0;
}