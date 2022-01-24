#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_3__* urb; } ;
struct mimio {int txflags; TYPE_2__ out; int /*<<< orphan*/  waitq; TYPE_1__* idev; int /*<<< orphan*/  txlock; int /*<<< orphan*/  udev; } ;
struct TYPE_7__ {int transfer_buffer_length; int /*<<< orphan*/  transfer_buffer; int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int HZ ; 
 int MIMIO_TXDONE ; 
 int MIMIO_TXWAIT ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC12 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC14(struct mimio *mimio, const char *buf, int nbytes)
{
	int rslt;
	int timeout;
	unsigned long flags;
	FUNC0(wait, current);

	if (!(FUNC4(nbytes))) {
		FUNC3(&mimio->idev->dev, "invalid arg: nbytes: %d.\n",
			nbytes);
		return -EINVAL;
	}

	/*
	 * Init the out urb and copy the data to send.
	 */
	mimio->out.urb->dev = mimio->udev;
	mimio->out.urb->transfer_buffer_length = nbytes;
	FUNC5(mimio->out.urb->transfer_buffer, buf, nbytes);

	/*
	 * Send the data.
	 */
	FUNC10(&mimio->txlock, flags);
	mimio->txflags = MIMIO_TXWAIT;
	rslt = FUNC12(mimio->out.urb, GFP_ATOMIC);
	FUNC11(&mimio->txlock, flags);
	FUNC2(&mimio->idev->dev, "rslt: %d.\n", rslt);

	if (rslt) {
		FUNC3(&mimio->idev->dev, "usb_submit_urb failure: %d.\n",
			rslt);
		return rslt;
	}

	/*
	 * Wait for completion to be signalled (the mimio_irq_out
	 * completion routine will or MIMIO_TXDONE in with txflags).
	 */
	timeout = HZ;
	FUNC9(TASK_INTERRUPTIBLE);
	FUNC1(&mimio->waitq, &wait);

	while (timeout && ((mimio->txflags & MIMIO_TXDONE) == 0)) {
		timeout = FUNC8(timeout);
		FUNC7();
	}

	if ((mimio->txflags & MIMIO_TXDONE) == 0)
		FUNC2(&mimio->idev->dev, "tx timed out.\n");

	/*
	 * Now that completion has been signalled,
	 * unlink the urb so that it can be recycled.
	 */
	FUNC9(TASK_RUNNING);
	FUNC6(&mimio->waitq, &wait);
	FUNC13(mimio->out.urb);

	return rslt;
}