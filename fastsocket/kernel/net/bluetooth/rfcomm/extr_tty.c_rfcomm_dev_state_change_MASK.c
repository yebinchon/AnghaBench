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
struct rfcomm_dlc {scalar_t__ state; struct rfcomm_dev* owner; } ;
struct rfcomm_dev {int err; int /*<<< orphan*/  tty; int /*<<< orphan*/  id; int /*<<< orphan*/  flags; int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 scalar_t__ BT_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_dlc*,struct rfcomm_dev*,int) ; 
 int /*<<< orphan*/  RFCOMM_RELEASE_ONHUP ; 
 int /*<<< orphan*/  FUNC1 (struct rfcomm_dev*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rfcomm_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC5 (struct rfcomm_dlc*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct rfcomm_dlc *dlc, int err)
{
	struct rfcomm_dev *dev = dlc->owner;
	if (!dev)
		return;

	FUNC0("dlc %p dev %p err %d", dlc, dev, err);

	dev->err = err;
	FUNC8(&dev->wait);

	if (dlc->state == BT_CLOSED) {
		if (!dev->tty) {
			if (FUNC6(RFCOMM_RELEASE_ONHUP, &dev->flags)) {
				/* Drop DLC lock here to avoid deadlock
				 * 1. rfcomm_dev_get will take rfcomm_dev_lock
				 *    but in rfcomm_dev_add there's lock order:
				 *    rfcomm_dev_lock -> dlc lock
				 * 2. rfcomm_dev_put will deadlock if it's
				 *    the last reference
				 */
				FUNC5(dlc);
				if (FUNC2(dev->id) == NULL) {
					FUNC4(dlc);
					return;
				}

				FUNC1(dev);
				FUNC3(dev);
				FUNC4(dlc);
			}
		} else
			FUNC7(dev->tty);
	}
}