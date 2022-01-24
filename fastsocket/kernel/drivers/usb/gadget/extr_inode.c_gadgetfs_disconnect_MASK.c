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
struct usb_gadget {int dummy; } ;
struct dev_data {scalar_t__ state; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GADGETFS_DISCONNECT ; 
 int /*<<< orphan*/  FUNC0 (struct dev_data*,char*) ; 
 scalar_t__ STATE_DEV_UNCONNECTED ; 
 int /*<<< orphan*/  FUNC1 (struct dev_data*) ; 
 struct dev_data* FUNC2 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC3 (struct dev_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6 (struct usb_gadget *gadget)
{
	struct dev_data		*dev = FUNC2 (gadget);

	FUNC4 (&dev->lock);
	if (dev->state == STATE_DEV_UNCONNECTED)
		goto exit;
	dev->state = STATE_DEV_UNCONNECTED;

	FUNC0 (dev, "disconnected\n");
	FUNC3 (dev, GADGETFS_DISCONNECT);
	FUNC1 (dev);
exit:
	FUNC5 (&dev->lock);
}