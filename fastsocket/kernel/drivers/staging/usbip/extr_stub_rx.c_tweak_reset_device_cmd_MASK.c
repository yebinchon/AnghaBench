#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_ctrlrequest {int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; } ;
struct urb {TYPE_1__* dev; scalar_t__ setup_packet; } ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct urb *urb)
{
	struct usb_ctrlrequest *req;
	__u16 value;
	__u16 index;
	int ret;

	req = (struct usb_ctrlrequest *) urb->setup_packet;
	value = FUNC2(req->wValue);
	index = FUNC2(req->wIndex);

	FUNC6("reset_device (port %d) to %s\n", index,
						FUNC1(&urb->dev->dev));

	/* all interfaces should be owned by usbip driver, so just reset it.  */
	ret = FUNC3(urb->dev, NULL);
	if (ret < 0) {
		FUNC0(&urb->dev->dev, "lock for reset\n");
		return ret;
	}

	/* try to reset the device */
	ret = FUNC4(urb->dev);
	if (ret < 0)
		FUNC0(&urb->dev->dev, "device reset\n");

	FUNC5(urb->dev);

	return ret;
}