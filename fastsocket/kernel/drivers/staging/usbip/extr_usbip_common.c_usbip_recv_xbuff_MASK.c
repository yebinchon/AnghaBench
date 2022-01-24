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
struct usbip_device {scalar_t__ side; int /*<<< orphan*/  tcp_socket; } ;
struct urb {int transfer_buffer_length; int actual_length; TYPE_1__* dev; scalar_t__ transfer_buffer; int /*<<< orphan*/  pipe; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EPIPE ; 
 int /*<<< orphan*/  SDEV_EVENT_ERROR_TCP ; 
 scalar_t__ USBIP_STUB ; 
 int /*<<< orphan*/  VDEV_EVENT_ERROR_TCP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usbip_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 

int FUNC5(struct usbip_device *ud, struct urb *urb)
{
	int ret;
	int size;

	if (ud->side == USBIP_STUB) {
		/* stub_rx.c */
		/* the direction of urb must be OUT. */
		if (FUNC1(urb->pipe))
			return 0;

		size = urb->transfer_buffer_length;
	} else {
		/* vhci_rx.c */
		/* the direction of urb must be IN. */
		if (FUNC2(urb->pipe))
			return 0;

		size = urb->actual_length;
	}

	/* no need to recv xbuff */
	if (!(size > 0))
		return 0;

	ret = FUNC4(0, ud->tcp_socket, (char *)urb->transfer_buffer,
			 size, 0);
	if (ret != size) {
		FUNC0(&urb->dev->dev, "recv xbuf, %d\n", ret);
		if (ud->side == USBIP_STUB) {
			FUNC3(ud, SDEV_EVENT_ERROR_TCP);
		} else {
			FUNC3(ud, VDEV_EVENT_ERROR_TCP);
			return -EPIPE;
		}
	}

	return ret;
}