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
struct TYPE_6__ {scalar_t__ length; scalar_t__ actual; scalar_t__ zero; } ;
struct pxa25x_request {TYPE_3__ req; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct pxa25x_ep {int* reg_udccs; unsigned int fifo_size; int /*<<< orphan*/  bEndpointAddress; int /*<<< orphan*/  queue; TYPE_2__ ep; int /*<<< orphan*/  reg_uddr; TYPE_1__* desc; } ;
struct TYPE_4__ {int /*<<< orphan*/  wMaxPacketSize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int,char*,char*,scalar_t__,struct pxa25x_request*) ; 
 int /*<<< orphan*/  DBG_VERY_NOISY ; 
 int UDCCS_BI_TFS ; 
 int UDCCS_BI_TPC ; 
 int UDCCS_BI_TSP ; 
 int /*<<< orphan*/  FUNC1 (struct pxa25x_ep*,struct pxa25x_request*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ,struct pxa25x_request*,unsigned int) ; 

__attribute__((used)) static int
FUNC8 (struct pxa25x_ep *ep, struct pxa25x_request *req)
{
	unsigned		max;

	max = FUNC2(ep->desc->wMaxPacketSize);
	do {
		unsigned	count;
		int		is_last, is_short;

		count = FUNC7(ep->reg_uddr, req, max);

		/* last packet is usually short (or a zlp) */
		if (FUNC6 (count != max))
			is_last = is_short = 1;
		else {
			if (FUNC3(req->req.length != req->req.actual)
					|| req->req.zero)
				is_last = 0;
			else
				is_last = 1;
			/* interrupt/iso maxpacket may not fill the fifo */
			is_short = FUNC6 (max < ep->fifo_size);
		}

		FUNC0(DBG_VERY_NOISY, "wrote %s %d bytes%s%s %d left %p\n",
			ep->ep.name, count,
			is_last ? "/L" : "", is_short ? "/S" : "",
			req->req.length - req->req.actual, req);

		/* let loose that packet. maybe try writing another one,
		 * double buffering might work.  TSP, TPC, and TFS
		 * bit values are the same for all normal IN endpoints.
		 */
		*ep->reg_udccs = UDCCS_BI_TPC;
		if (is_short)
			*ep->reg_udccs = UDCCS_BI_TSP;

		/* requests complete when all IN data is in the FIFO */
		if (is_last) {
			FUNC1 (ep, req, 0);
			if (FUNC4(&ep->queue))
				FUNC5 (ep->bEndpointAddress);
			return 1;
		}

		// TODO experiment: how robust can fifo mode tweaking be?
		// double buffering is off in the default fifo mode, which
		// prevents TFS from being set here.

	} while (*ep->reg_udccs & UDCCS_BI_TFS);
	return 0;
}