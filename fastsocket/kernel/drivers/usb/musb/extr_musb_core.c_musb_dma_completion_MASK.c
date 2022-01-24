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
typedef  int u8 ;
struct musb {int /*<<< orphan*/  mregs; } ;

/* Variables and functions */
 int /*<<< orphan*/  MUSB_DEVCTL ; 
 int MUSB_DEVCTL_HM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct musb*) ; 
 int /*<<< orphan*/  FUNC4 (struct musb*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct musb*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct musb*) ; 
 int /*<<< orphan*/  FUNC7 (struct musb*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct musb*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC10(struct musb *musb, u8 epnum, u8 transmit)
{
	u8	devctl = FUNC9(musb->mregs, MUSB_DEVCTL);

	/* called with controller lock already held */

	if (!epnum) {
#ifndef CONFIG_USB_TUSB_OMAP_DMA
		if (!FUNC0()) {
			/* endpoint 0 */
			if (devctl & MUSB_DEVCTL_HM)
				FUNC6(musb);
			else
				FUNC3(musb);
		}
#endif
	} else {
		/* endpoints 1..15 */
		if (transmit) {
			if (devctl & MUSB_DEVCTL_HM) {
				if (FUNC1())
					FUNC8(musb, epnum);
			} else {
				if (FUNC2())
					FUNC5(musb, epnum);
			}
		} else {
			/* receive */
			if (devctl & MUSB_DEVCTL_HM) {
				if (FUNC1())
					FUNC7(musb, epnum);
			} else {
				if (FUNC2())
					FUNC4(musb, epnum);
			}
		}
	}
}