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
struct qe_ep {int data01; int /*<<< orphan*/  txframe; TYPE_1__* udc; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FRAME_ERROR ; 
 int PID_DATA0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qe_ep*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qe_ep*) ; 
 int /*<<< orphan*/  FUNC5 (struct qe_ep*,int) ; 

__attribute__((used)) static int FUNC6(struct qe_ep *ep)
{
	if (FUNC3(ep->txframe) & FRAME_ERROR) {
		FUNC4(ep);
		FUNC0(ep->udc->dev, "The EP0 transmit data have error!\n");
		if (FUNC2(ep->txframe) & PID_DATA0)
			ep->data01 = 0;
		else
			ep->data01 = 1;

		FUNC5(ep, 1);
	} else
		FUNC5(ep, 0);

	FUNC1(ep, ep->txframe); /* send the data */
	return 0;
}