#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_hcd {int dummy; } ;
struct urb {TYPE_1__* dev; int /*<<< orphan*/  use_count; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIDRM ; 
 int EINPROGRESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct usb_hcd* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,struct urb*,int) ; 
 int /*<<< orphan*/  hcd_urb_unlink_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC5 (struct usb_hcd*,struct urb*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

int FUNC8 (struct urb *urb, int status)
{
	struct usb_hcd		*hcd;
	int			retval = -EIDRM;
	unsigned long		flags;

	/* Prevent the device and bus from going away while
	 * the unlink is carried out.  If they are already gone
	 * then urb->use_count must be 0, since disconnected
	 * devices can't have any active URBs.
	 */
	FUNC3(&hcd_urb_unlink_lock, flags);
	if (FUNC0(&urb->use_count) > 0) {
		retval = 0;
		FUNC6(urb->dev);
	}
	FUNC4(&hcd_urb_unlink_lock, flags);
	if (retval == 0) {
		hcd = FUNC1(urb->dev->bus);
		retval = FUNC5(hcd, urb, status);
		FUNC7(urb->dev);
	}

	if (retval == 0)
		retval = -EINPROGRESS;
	else if (retval != -EIDRM && retval != -EBUSY)
		FUNC2(&urb->dev->dev, "hcd_unlink_urb %p fail %d\n",
				urb, retval);
	return retval;
}