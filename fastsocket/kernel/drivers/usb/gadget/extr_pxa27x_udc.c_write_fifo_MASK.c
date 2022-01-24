#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct pxa_ep {unsigned int fifo_size; } ;
struct TYPE_2__ {scalar_t__ length; scalar_t__ actual; scalar_t__ zero; } ;
struct pxa27x_request {TYPE_1__ req; } ;

/* Variables and functions */
 int /*<<< orphan*/  UDCCSR ; 
 int UDCCSR_PC ; 
 int UDCCSR_SP ; 
 int UDCCSR_TRN ; 
 int /*<<< orphan*/  USB_DIR_IN ; 
 int /*<<< orphan*/  FUNC0 (struct pxa_ep*,char*,int,char*,char*,scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct pxa_ep*) ; 
 int /*<<< orphan*/  FUNC2 (struct pxa_ep*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pxa_ep*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pxa_ep*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (struct pxa_ep*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 
 int FUNC8 (struct pxa_ep*,struct pxa27x_request*,unsigned int) ; 

__attribute__((used)) static int FUNC9(struct pxa_ep *ep, struct pxa27x_request *req)
{
	unsigned max;
	int count, is_short, is_last = 0, completed = 0, totcount = 0;
	u32 udccsr;

	max = ep->fifo_size;
	do {
		is_short = 0;

		udccsr = FUNC6(ep, UDCCSR);
		if (udccsr & UDCCSR_PC) {
			FUNC2(ep, "Clearing Transmit Complete, udccsr=%x\n",
				udccsr);
			FUNC3(ep, UDCCSR_PC);
		}
		if (udccsr & UDCCSR_TRN) {
			FUNC2(ep, "Clearing Underrun on, udccsr=%x\n",
				udccsr);
			FUNC3(ep, UDCCSR_TRN);
		}

		count = FUNC8(ep, req, max);
		FUNC4(ep, count, USB_DIR_IN);
		totcount += count;

		/* last packet is usually short (or a zlp) */
		if (FUNC7(count < max)) {
			is_last = 1;
			is_short = 1;
		} else {
			if (FUNC5(req->req.length > req->req.actual)
					|| req->req.zero)
				is_last = 0;
			else
				is_last = 1;
			/* interrupt/iso maxpacket may not fill the fifo */
			is_short = FUNC7(max < ep->fifo_size);
		}

		if (is_short)
			FUNC3(ep, UDCCSR_SP);

		/* requests complete when all IN data is in the FIFO */
		if (is_last) {
			completed = 1;
			break;
		}
	} while (!FUNC1(ep));

	FUNC0(ep, "wrote count:%d bytes%s%s, left:%d req=%p\n",
			totcount, is_last ? "/L" : "", is_short ? "/S" : "",
			req->req.length - req->req.actual, &req->req);

	return completed;
}