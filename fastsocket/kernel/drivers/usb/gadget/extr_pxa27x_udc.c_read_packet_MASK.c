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
typedef  int /*<<< orphan*/  u32 ;
struct pxa_ep {int dummy; } ;
struct TYPE_2__ {int length; int actual; int buf; } ;
struct pxa27x_request {TYPE_1__ req; } ;

/* Variables and functions */
 int /*<<< orphan*/  UDCCSR_PC ; 
 int /*<<< orphan*/  UDCDR ; 
 int FUNC0 (struct pxa_ep*) ; 
 int /*<<< orphan*/  FUNC1 (struct pxa_ep*) ; 
 int /*<<< orphan*/  FUNC2 (struct pxa_ep*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct pxa_ep*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct pxa_ep *ep, struct pxa27x_request *req)
{
	u32 *buf;
	int bytes_ep, bufferspace, count, i;

	bytes_ep = FUNC0(ep);
	bufferspace = req->req.length - req->req.actual;

	buf = (u32 *)(req->req.buf + req->req.actual);
	FUNC5(buf);

	if (FUNC3(!FUNC1(ep)))
		count = FUNC4(bytes_ep, bufferspace);
	else /* zlp */
		count = 0;

	for (i = count; i > 0; i -= 4)
		*buf++ = FUNC6(ep, UDCDR);
	req->req.actual += count;

	FUNC2(ep, UDCCSR_PC);

	return count;
}