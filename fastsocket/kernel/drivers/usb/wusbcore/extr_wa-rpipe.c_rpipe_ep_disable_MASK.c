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
typedef  int /*<<< orphan*/  u16 ;
struct wahc {int /*<<< orphan*/  rpipe_mutex; int /*<<< orphan*/  usb_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  wRPipeIndex; } ;
struct wa_rpipe {TYPE_1__ descr; } ;
struct usb_host_endpoint {struct wa_rpipe* hcpriv; } ;

/* Variables and functions */
 int USB_DIR_OUT ; 
 int USB_RECIP_RPIPE ; 
 int /*<<< orphan*/  USB_REQ_RPIPE_ABORT ; 
 int USB_TYPE_CLASS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wa_rpipe*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct wahc *wa, struct usb_host_endpoint *ep)
{
	struct wa_rpipe *rpipe;

	FUNC1(&wa->rpipe_mutex);
	rpipe = ep->hcpriv;
	if (rpipe != NULL) {
		u16 index = FUNC0(rpipe->descr.wRPipeIndex);

		FUNC4(
			wa->usb_dev, FUNC5(wa->usb_dev, 0),
			USB_REQ_RPIPE_ABORT,
			USB_DIR_OUT | USB_TYPE_CLASS | USB_RECIP_RPIPE,
			0, index, NULL, 0, 1000 /* FIXME: arbitrary */);
		FUNC3(rpipe);
	}
	FUNC2(&wa->rpipe_mutex);
}