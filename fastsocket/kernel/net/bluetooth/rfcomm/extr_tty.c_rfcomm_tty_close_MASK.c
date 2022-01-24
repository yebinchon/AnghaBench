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
struct tty_struct {int /*<<< orphan*/ * driver_data; } ;
struct rfcomm_dev {int /*<<< orphan*/  list; int /*<<< orphan*/  flags; int /*<<< orphan*/  dlc; int /*<<< orphan*/ * tty; int /*<<< orphan*/  wakeup_task; TYPE_1__* tty_dev; int /*<<< orphan*/  opened; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct tty_struct*,struct rfcomm_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DPM_ORDER_DEV_LAST ; 
 int /*<<< orphan*/  RFCOMM_TTY_ATTACHED ; 
 int /*<<< orphan*/  RFCOMM_TTY_RELEASED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rfcomm_dev_lock ; 
 int /*<<< orphan*/  FUNC6 (struct rfcomm_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct tty_struct *tty, struct file *filp)
{
	struct rfcomm_dev *dev = (struct rfcomm_dev *) tty->driver_data;
	if (!dev)
		return;

	FUNC0("tty %p dev %p dlc %p opened %d", tty, dev, dev->dlc,
						FUNC2(&dev->opened));

	if (FUNC1(&dev->opened)) {
		if (dev->tty_dev->parent)
			FUNC4(dev->tty_dev, NULL, DPM_ORDER_DEV_LAST);

		/* Close DLC and dettach TTY */
		FUNC7(dev->dlc, 0);

		FUNC3(RFCOMM_TTY_ATTACHED, &dev->flags);
		FUNC10(&dev->wakeup_task);

		FUNC8(dev->dlc);
		tty->driver_data = NULL;
		dev->tty = NULL;
		FUNC9(dev->dlc);

		if (FUNC11(RFCOMM_TTY_RELEASED, &dev->flags)) {
			FUNC12(&rfcomm_dev_lock);
			FUNC5(&dev->list);
			FUNC13(&rfcomm_dev_lock);

			FUNC6(dev);
		}
	}

	FUNC6(dev);
}