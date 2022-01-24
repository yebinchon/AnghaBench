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
struct usb_ctrlrequest {int bRequestType; int bRequest; void* wLength; void* wIndex; void* wValue; } ;
typedef  int /*<<< orphan*/  req ;
struct TYPE_2__ {int /*<<< orphan*/  pids; int /*<<< orphan*/  address; int /*<<< orphan*/  control; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DBGP_GO ; 
 int DBGP_MAX_PACKET ; 
 int /*<<< orphan*/  DBGP_OUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int USB_DIR_IN ; 
 int /*<<< orphan*/  USB_PID_DATA0 ; 
 int /*<<< orphan*/  USB_PID_SETUP ; 
 void* FUNC2 (int) ; 
 int FUNC3 (unsigned int,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_ctrlrequest*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* ehci_debug ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(unsigned devnum, int requesttype,
	int request, int value, int index, void *data, int size)
{
	u32 pids, addr, ctrl;
	struct usb_ctrlrequest req;
	int read;
	int ret;

	read = (requesttype & USB_DIR_IN) != 0;
	if (size > (read ? DBGP_MAX_PACKET:0))
		return -1;

	/* Compute the control message */
	req.bRequestType = requesttype;
	req.bRequest = request;
	req.wValue = FUNC2(value);
	req.wIndex = FUNC2(index);
	req.wLength = FUNC2(size);

	pids = FUNC1(USB_PID_DATA0, USB_PID_SETUP);
	addr = FUNC0(devnum, 0);

	ctrl = FUNC7(&ehci_debug->control);
	ctrl = FUNC4(ctrl, sizeof(req));
	ctrl |= DBGP_OUT;
	ctrl |= DBGP_GO;

	/* Send the setup message */
	FUNC5(&req, sizeof(req));
	FUNC8(addr, &ehci_debug->address);
	FUNC8(pids, &ehci_debug->pids);
	ret = FUNC6(ctrl);
	if (ret < 0)
		return ret;

	/* Read the result */
	return FUNC3(devnum, 0, data, size);
}