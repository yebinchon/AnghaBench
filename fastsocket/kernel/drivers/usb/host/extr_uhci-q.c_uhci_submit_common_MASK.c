#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct urb_priv {int dummy; } ;
struct urb {int transfer_buffer_length; int transfer_dma; unsigned long pipe; int transfer_flags; TYPE_3__* dev; struct urb_priv* hcpriv; } ;
struct uhci_td {int /*<<< orphan*/  status; int /*<<< orphan*/  link; } ;
struct uhci_qh {struct uhci_td* dummy_td; TYPE_2__* hep; } ;
struct uhci_hcd {int dummy; } ;
typedef  int dma_addr_t ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_7__ {scalar_t__ speed; } ;
struct TYPE_5__ {int /*<<< orphan*/  wMaxPacketSize; } ;
struct TYPE_6__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct uhci_td*) ; 
 unsigned long PIPE_DEVEP_MASK ; 
 unsigned long TD_CTRL_ACTIVE ; 
 unsigned long TD_CTRL_IOC ; 
 unsigned long TD_CTRL_LS ; 
 unsigned long TD_CTRL_SPD ; 
 unsigned int TD_TOKEN_TOGGLE_SHIFT ; 
 int URB_SHORT_NOT_OK ; 
 int URB_ZERO_PACKET ; 
 unsigned long USB_PID_OUT ; 
 scalar_t__ USB_SPEED_LOW ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uhci_td*,struct urb_priv*) ; 
 struct uhci_td* FUNC4 (struct uhci_hcd*) ; 
 unsigned long FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct uhci_td*,unsigned long,unsigned long,int) ; 
 unsigned long FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct uhci_td*) ; 
 unsigned int FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__) ; 
 unsigned long FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long) ; 
 scalar_t__ FUNC12 (unsigned long) ; 
 scalar_t__ FUNC13 (unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 () ; 

__attribute__((used)) static int FUNC16(struct uhci_hcd *uhci, struct urb *urb,
		struct uhci_qh *qh)
{
	struct uhci_td *td;
	unsigned long destination, status;
	int maxsze = FUNC2(qh->hep->desc.wMaxPacketSize);
	int len = urb->transfer_buffer_length;
	dma_addr_t data = urb->transfer_dma;
	__le32 *plink;
	struct urb_priv *urbp = urb->hcpriv;
	unsigned int toggle;

	if (len < 0)
		return -EINVAL;

	/* The "pipe" thing contains the destination in bits 8--18 */
	destination = (urb->pipe & PIPE_DEVEP_MASK) | FUNC10(urb->pipe);
	toggle = FUNC9(urb->dev, FUNC11(urb->pipe),
			 FUNC13(urb->pipe));

	/* 3 errors, dummy TD remains inactive */
	status = FUNC7(3);
	if (urb->dev->speed == USB_SPEED_LOW)
		status |= TD_CTRL_LS;
	if (FUNC12(urb->pipe))
		status |= TD_CTRL_SPD;

	/*
	 * Build the DATA TDs
	 */
	plink = NULL;
	td = qh->dummy_td;
	do {	/* Allow zero length packets */
		int pktsze = maxsze;

		if (len <= pktsze) {		/* The last packet */
			pktsze = len;
			if (!(urb->transfer_flags & URB_SHORT_NOT_OK))
				status &= ~TD_CTRL_SPD;
		}

		if (plink) {
			td = FUNC4(uhci);
			if (!td)
				goto nomem;
			*plink = FUNC0(td);
		}
		FUNC3(td, urbp);
		FUNC6(td, status,
				destination | FUNC5(pktsze) |
					(toggle << TD_TOKEN_TOGGLE_SHIFT),
				data);
		plink = &td->link;
		status |= TD_CTRL_ACTIVE;

		data += pktsze;
		len -= maxsze;
		toggle ^= 1;
	} while (len > 0);

	/*
	 * URB_ZERO_PACKET means adding a 0-length packet, if direction
	 * is OUT and the transfer_length was an exact multiple of maxsze,
	 * hence (len = transfer_length - N * maxsze) == 0
	 * however, if transfer_length == 0, the zero packet was already
	 * prepared above.
	 */
	if ((urb->transfer_flags & URB_ZERO_PACKET) &&
			FUNC13(urb->pipe) && len == 0 &&
			urb->transfer_buffer_length > 0) {
		td = FUNC4(uhci);
		if (!td)
			goto nomem;
		*plink = FUNC0(td);

		FUNC3(td, urbp);
		FUNC6(td, status,
				destination | FUNC5(0) |
					(toggle << TD_TOKEN_TOGGLE_SHIFT),
				data);
		plink = &td->link;

		toggle ^= 1;
	}

	/* Set the interrupt-on-completion flag on the last packet.
	 * A more-or-less typical 4 KB URB (= size of one memory page)
	 * will require about 3 ms to transfer; that's a little on the
	 * fast side but not enough to justify delaying an interrupt
	 * more than 2 or 3 URBs, so we will ignore the URB_NO_INTERRUPT
	 * flag setting. */
	td->status |= FUNC1(TD_CTRL_IOC);

	/*
	 * Build the new dummy TD and activate the old one
	 */
	td = FUNC4(uhci);
	if (!td)
		goto nomem;
	*plink = FUNC0(td);

	FUNC6(td, 0, USB_PID_OUT | FUNC5(0), 0);
	FUNC15();
	qh->dummy_td->status |= FUNC1(TD_CTRL_ACTIVE);
	qh->dummy_td = td;

	FUNC14(urb->dev, FUNC11(urb->pipe),
			FUNC13(urb->pipe), toggle);
	return 0;

nomem:
	/* Remove the dummy TD from the td_list so it doesn't get freed */
	FUNC8(qh->dummy_td);
	return -ENOMEM;
}