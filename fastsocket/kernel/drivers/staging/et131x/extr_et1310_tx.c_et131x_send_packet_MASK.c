#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct sk_buff {scalar_t__ len; int data_len; int /*<<< orphan*/ * data; } ;
struct TYPE_4__ {scalar_t__ nBusySend; TYPE_2__* TCBReadyQueueTail; TYPE_2__* TCBReadyQueueHead; } ;
struct et131x_adapter {TYPE_1__ TxRing; int /*<<< orphan*/  TCBReadyQLock; } ;
struct TYPE_5__ {scalar_t__ PacketLength; struct TYPE_5__* Next; int /*<<< orphan*/  Flags; struct sk_buff* Packet; } ;
typedef  TYPE_2__* PMP_TCB ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 scalar_t__ ETH_HLEN ; 
 scalar_t__ NUM_TCB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  fMP_DEST_BROAD ; 
 int /*<<< orphan*/  fMP_DEST_MULTI ; 
 int FUNC1 (struct et131x_adapter*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb,
			      struct et131x_adapter *etdev)
{
	int status = 0;
	PMP_TCB pMpTcb = NULL;
	uint16_t *shbufva;
	unsigned long flags;

	/* All packets must have at least a MAC address and a protocol type */
	if (skb->len < ETH_HLEN) {
		return -EIO;
	}

	/* Get a TCB for this packet */
	FUNC2(&etdev->TCBReadyQLock, flags);

	pMpTcb = etdev->TxRing.TCBReadyQueueHead;

	if (pMpTcb == NULL) {
		FUNC3(&etdev->TCBReadyQLock, flags);
		return -ENOMEM;
	}

	etdev->TxRing.TCBReadyQueueHead = pMpTcb->Next;

	if (etdev->TxRing.TCBReadyQueueHead == NULL)
		etdev->TxRing.TCBReadyQueueTail = NULL;

	FUNC3(&etdev->TCBReadyQLock, flags);

	pMpTcb->PacketLength = skb->len;
	pMpTcb->Packet = skb;

	if ((skb->data != NULL) && ((skb->len - skb->data_len) >= 6)) {
		shbufva = (uint16_t *) skb->data;

		if ((shbufva[0] == 0xffff) &&
		    (shbufva[1] == 0xffff) && (shbufva[2] == 0xffff)) {
			pMpTcb->Flags |= fMP_DEST_BROAD;
		} else if ((shbufva[0] & 0x3) == 0x0001) {
			pMpTcb->Flags |=  fMP_DEST_MULTI;
		}
	}

	pMpTcb->Next = NULL;

	/* Call the NIC specific send handler. */
	if (status == 0)
		status = FUNC1(etdev, pMpTcb);

	if (status != 0) {
		FUNC2(&etdev->TCBReadyQLock, flags);

		if (etdev->TxRing.TCBReadyQueueTail) {
			etdev->TxRing.TCBReadyQueueTail->Next = pMpTcb;
		} else {
			/* Apparently ready Q is empty. */
			etdev->TxRing.TCBReadyQueueHead = pMpTcb;
		}

		etdev->TxRing.TCBReadyQueueTail = pMpTcb;
		FUNC3(&etdev->TCBReadyQLock, flags);
		return status;
	}
	FUNC0(etdev->TxRing.nBusySend > NUM_TCB);
	return 0;
}