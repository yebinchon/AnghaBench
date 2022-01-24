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
struct tty_struct {int index; struct rfcomm_dev* driver_data; } ;
struct rfcomm_dlc {scalar_t__ state; } ;
struct rfcomm_dev {int err; struct rfcomm_dlc* dlc; int /*<<< orphan*/  tty_dev; int /*<<< orphan*/  wait; int /*<<< orphan*/  channel; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; int /*<<< orphan*/  flags; struct tty_struct* tty; int /*<<< orphan*/  opened; } ;
struct file {int dummy; } ;

/* Variables and functions */
 scalar_t__ BT_CLOSED ; 
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DPM_ORDER_DEV_AFTER_PARENT ; 
 int EINTR ; 
 int ENODEV ; 
 int /*<<< orphan*/  RFCOMM_TTY_ATTACHED ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct rfcomm_dev* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct rfcomm_dlc*) ; 
 int FUNC10 (struct rfcomm_dlc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC12 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC13 (struct rfcomm_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct rfcomm_dev*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC19(struct tty_struct *tty, struct file *filp)
{
	FUNC1(wait, current);
	struct rfcomm_dev *dev;
	struct rfcomm_dlc *dlc;
	int err, id;

	id = tty->index;

	FUNC0("tty %p id %d", tty, id);

	/* We don't leak this refcount. For reasons which are not entirely
	   clear, the TTY layer will call our ->close() method even if the
	   open fails. We decrease the refcount there, and decreasing it
	   here too would cause breakage. */
	dev = FUNC8(id);
	if (!dev)
		return -ENODEV;

	FUNC0("dev %p dst %s channel %d opened %d", dev, FUNC5(&dev->dst),
				dev->channel, FUNC4(&dev->opened));

	if (FUNC3(&dev->opened) > 1)
		return 0;

	dlc = dev->dlc;

	/* Attach TTY and open DLC */

	FUNC9(dlc);
	tty->driver_data = dev;
	dev->tty = tty;
	FUNC11(dlc);
	FUNC16(RFCOMM_TTY_ATTACHED, &dev->flags);

	err = FUNC10(dlc, &dev->src, &dev->dst, dev->channel);
	if (err < 0)
		return err;

	/* Wait for DLC to connect */
	FUNC2(&dev->wait, &wait);
	while (1) {
		FUNC17(TASK_INTERRUPTIBLE);

		if (dlc->state == BT_CLOSED) {
			err = -dev->err;
			break;
		}

		if (dlc->state == BT_CONNECTED)
			break;

		if (FUNC18(current)) {
			err = -EINTR;
			break;
		}

		FUNC15();
	}
	FUNC17(TASK_RUNNING);
	FUNC7(&dev->wait, &wait);

	if (err == 0)
		FUNC6(dev->tty_dev, FUNC13(dev),
			    DPM_ORDER_DEV_AFTER_PARENT);

	FUNC14(dev);

	FUNC12(dev->dlc);

	return err;
}