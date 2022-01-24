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
typedef  int u32 ;
struct usb_ctrlrequest {int dummy; } ;
struct urb {int transfer_buffer_length; int setup_dma; int transfer_dma; int transfer_flags; int /*<<< orphan*/  pipe; int /*<<< orphan*/  dev; } ;
struct list_head {int dummy; } ;
struct ehci_qtd {int /*<<< orphan*/  hw_token; int /*<<< orphan*/  qtd_list; int /*<<< orphan*/  qtd_dma; void* hw_next; struct urb* urb; int /*<<< orphan*/  hw_alt_next; } ;
struct ehci_hcd {TYPE_2__* async; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int dma_addr_t ;
struct TYPE_4__ {TYPE_1__* hw; } ;
struct TYPE_3__ {int /*<<< orphan*/  hw_alt_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ehci_hcd*) ; 
 int EHCI_TUNE_CERR ; 
 int /*<<< orphan*/  QTD_IOC ; 
 void* FUNC1 (struct ehci_hcd*,int /*<<< orphan*/ ) ; 
 int QTD_STS_ACTIVE ; 
 int QTD_TOGGLE ; 
 int URB_NO_INTERRUPT ; 
 int URB_SHORT_NOT_OK ; 
 int URB_ZERO_PACKET ; 
 int /*<<< orphan*/  FUNC2 (struct ehci_hcd*,int /*<<< orphan*/ ) ; 
 struct ehci_qtd* FUNC3 (struct ehci_hcd*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct list_head*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ehci_hcd*,struct ehci_qtd*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ehci_hcd*,struct urb*,struct list_head*) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct list_head *
FUNC14 (
	struct ehci_hcd		*ehci,
	struct urb		*urb,
	struct list_head	*head,
	gfp_t			flags
) {
	struct ehci_qtd		*qtd, *qtd_prev;
	dma_addr_t		buf;
	int			len, maxpacket;
	int			is_input;
	u32			token;

	/*
	 * URBs map to sequences of QTDs:  one logical transaction
	 */
	qtd = FUNC3 (ehci, flags);
	if (FUNC9 (!qtd))
		return NULL;
	FUNC5 (&qtd->qtd_list, head);
	qtd->urb = urb;

	token = QTD_STS_ACTIVE;
	token |= (EHCI_TUNE_CERR << 10);
	/* for split transactions, SplitXState initialized to zero */

	len = urb->transfer_buffer_length;
	is_input = FUNC13 (urb->pipe);
	if (FUNC12 (urb->pipe)) {
		/* SETUP pid */
		FUNC7(ehci, qtd, urb->setup_dma,
				sizeof (struct usb_ctrlrequest),
				token | (2 /* "setup" */ << 8), 8);

		/* ... and always at least one more pid */
		token ^= QTD_TOGGLE;
		qtd_prev = qtd;
		qtd = FUNC3 (ehci, flags);
		if (FUNC9 (!qtd))
			goto cleanup;
		qtd->urb = urb;
		qtd_prev->hw_next = FUNC1(ehci, qtd->qtd_dma);
		FUNC5 (&qtd->qtd_list, head);

		/* for zero length DATA stages, STATUS is always IN */
		if (len == 0)
			token |= (1 /* "in" */ << 8);
	}

	/*
	 * data transfer stage:  buffer setup
	 */
	buf = urb->transfer_dma;

	if (is_input)
		token |= (1 /* "in" */ << 8);
	/* else it's already initted to "out" pid (0 << 8) */

	maxpacket = FUNC6(FUNC10(urb->dev, urb->pipe, !is_input));

	/*
	 * buffer gets wrapped in one or more qtds;
	 * last one may be "short" (including zero len)
	 * and may serve as a control status ack
	 */
	for (;;) {
		int this_qtd_len;

		this_qtd_len = FUNC7(ehci, qtd, buf, len, token, maxpacket);
		len -= this_qtd_len;
		buf += this_qtd_len;

		/*
		 * short reads advance to a "magic" dummy instead of the next
		 * qtd ... that forces the queue to stop, for manual cleanup.
		 * (this will usually be overridden later.)
		 */
		if (is_input)
			qtd->hw_alt_next = ehci->async->hw->hw_alt_next;

		/* qh makes control packets use qtd toggle; maybe switch it */
		if ((maxpacket & (this_qtd_len + (maxpacket - 1))) == 0)
			token ^= QTD_TOGGLE;

		if (FUNC4 (len <= 0))
			break;

		qtd_prev = qtd;
		qtd = FUNC3 (ehci, flags);
		if (FUNC9 (!qtd))
			goto cleanup;
		qtd->urb = urb;
		qtd_prev->hw_next = FUNC1(ehci, qtd->qtd_dma);
		FUNC5 (&qtd->qtd_list, head);
	}

	/*
	 * unless the caller requires manual cleanup after short reads,
	 * have the alt_next mechanism keep the queue running after the
	 * last data qtd (the only one, for control and most other cases).
	 */
	if (FUNC4 ((urb->transfer_flags & URB_SHORT_NOT_OK) == 0
				|| FUNC12 (urb->pipe)))
		qtd->hw_alt_next = FUNC0(ehci);

	/*
	 * control requests may need a terminating data "status" ack;
	 * bulk ones may need a terminating short packet (zero length).
	 */
	if (FUNC4 (urb->transfer_buffer_length != 0)) {
		int	one_more = 0;

		if (FUNC12 (urb->pipe)) {
			one_more = 1;
			token ^= 0x0100;	/* "in" <--> "out"  */
			token |= QTD_TOGGLE;	/* force DATA1 */
		} else if (FUNC11 (urb->pipe)
				&& (urb->transfer_flags & URB_ZERO_PACKET)
				&& !(urb->transfer_buffer_length % maxpacket)) {
			one_more = 1;
		}
		if (one_more) {
			qtd_prev = qtd;
			qtd = FUNC3 (ehci, flags);
			if (FUNC9 (!qtd))
				goto cleanup;
			qtd->urb = urb;
			qtd_prev->hw_next = FUNC1(ehci, qtd->qtd_dma);
			FUNC5 (&qtd->qtd_list, head);

			/* never any data in such packets */
			FUNC7(ehci, qtd, 0, 0, token, 0);
		}
	}

	/* by default, enable interrupt on urb completion */
	if (FUNC4 (!(urb->transfer_flags & URB_NO_INTERRUPT)))
		qtd->hw_token |= FUNC2(ehci, QTD_IOC);
	return head;

cleanup:
	FUNC8 (ehci, urb, head);
	return NULL;
}