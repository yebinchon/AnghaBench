#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct musb {int /*<<< orphan*/  lock; void* int_rx; int /*<<< orphan*/  mregs; void* int_tx; scalar_t__ int_usb; } ;
typedef  scalar_t__ irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ IRQ_HANDLED ; 
 scalar_t__ IRQ_NONE ; 
 int /*<<< orphan*/  MUSB_INTRRX ; 
 int /*<<< orphan*/  MUSB_INTRTX ; 
 int /*<<< orphan*/  MUSB_INTRUSB ; 
 scalar_t__ FUNC1 (struct musb*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *__hci)
{
	unsigned long	flags;
	irqreturn_t	retval = IRQ_NONE;
	struct musb	*musb = __hci;

	FUNC6(&musb->lock, flags);

	musb->int_usb = FUNC2(musb->mregs, MUSB_INTRUSB);
	musb->int_tx = FUNC3(musb->mregs, MUSB_INTRTX);
	musb->int_rx = FUNC3(musb->mregs, MUSB_INTRRX);

	if (musb->int_usb || musb->int_tx || musb->int_rx) {
		FUNC4(musb->mregs, MUSB_INTRUSB, musb->int_usb);
		FUNC5(musb->mregs, MUSB_INTRTX, musb->int_tx);
		FUNC5(musb->mregs, MUSB_INTRRX, musb->int_rx);
		retval = FUNC1(musb);
	}

	FUNC7(&musb->lock, flags);

	/* REVISIT we sometimes get spurious IRQs on g_ep0
	 * not clear why... fall in BF54x too.
	 */
	if (retval != IRQ_HANDLED)
		FUNC0(5, "spurious?\n");

	return IRQ_HANDLED;
}