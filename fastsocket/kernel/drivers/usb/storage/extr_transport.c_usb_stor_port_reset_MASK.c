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
struct us_data {int /*<<< orphan*/  pusb_dev; int /*<<< orphan*/  dflags; int /*<<< orphan*/  pusb_intf; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  US_FLIDX_DISCONNECTING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct us_data *us)
{
	int result;

	result = FUNC2(us->pusb_dev, us->pusb_intf);
	if (result < 0)
		FUNC0("unable to lock device for reset: %d\n", result);
	else {
		/* Were we disconnected while waiting for the lock? */
		if (FUNC1(US_FLIDX_DISCONNECTING, &us->dflags)) {
			result = -EIO;
			FUNC0("No reset during disconnect\n");
		} else {
			result = FUNC3(us->pusb_dev);
			FUNC0("usb_reset_device returns %d\n",
					result);
		}
		FUNC4(us->pusb_dev);
	}
	return result;
}