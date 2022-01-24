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
typedef  scalar_t__ u8 ;
struct qe_udc {int /*<<< orphan*/  lock; int /*<<< orphan*/  gadget; TYPE_1__* driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* disconnect ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 scalar_t__ USB_MAX_ENDPOINTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct qe_udc*,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct qe_udc *udc)
{
	u8 pipe;

	for (pipe = 0; pipe < USB_MAX_ENDPOINTS; pipe++)
		FUNC3(udc, pipe);

	/* report disconnect; the driver is already quiesced */
	FUNC1(&udc->lock);
	udc->driver->disconnect(&udc->gadget);
	FUNC0(&udc->lock);

	return 0;
}