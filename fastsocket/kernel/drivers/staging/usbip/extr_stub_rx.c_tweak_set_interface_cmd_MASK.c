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
struct usb_ctrlrequest {int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; } ;
struct urb {int /*<<< orphan*/  dev; scalar_t__ setup_packet; } ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int FUNC4(struct urb *urb)
{
	struct usb_ctrlrequest *req;
	__u16 alternate;
	__u16 interface;
	int ret;

	req = (struct usb_ctrlrequest *) urb->setup_packet;
	alternate = FUNC0(req->wValue);
	interface = FUNC0(req->wIndex);

	FUNC2("set_interface: inf %u alt %u\n", interface,
								alternate);

	ret = FUNC1(urb->dev, interface, alternate);
	if (ret < 0)
		FUNC3("set_interface error: inf %u alt %u, %d\n",
					interface, alternate, ret);
	else
		FUNC3("set_interface done: inf %u alt %u\n",
							interface,
							alternate);

	return ret;
}