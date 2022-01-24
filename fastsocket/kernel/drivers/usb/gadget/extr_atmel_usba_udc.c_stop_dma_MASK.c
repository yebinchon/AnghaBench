#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct usba_ep {TYPE_1__ ep; TYPE_2__* udc; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {TYPE_3__* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  STATUS ; 
 int USBA_DMA_CH_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct usba_ep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usba_ep*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usba_ep *ep, u32 *pstatus)
{
	unsigned int timeout;
	u32 status;

	/*
	 * Stop the DMA controller. When writing both CH_EN
	 * and LINK to 0, the other bits are not affected.
	 */
	FUNC3(ep, CONTROL, 0);

	/* Wait for the FIFO to empty */
	for (timeout = 40; timeout; --timeout) {
		status = FUNC2(ep, STATUS);
		if (!(status & USBA_DMA_CH_EN))
			break;
		FUNC1(1);
	}

	if (pstatus)
		*pstatus = status;

	if (timeout == 0) {
		FUNC0(&ep->udc->pdev->dev,
			"%s: timed out waiting for DMA FIFO to empty\n",
			ep->ep.name);
		return -ETIMEDOUT;
	}

	return 0;
}