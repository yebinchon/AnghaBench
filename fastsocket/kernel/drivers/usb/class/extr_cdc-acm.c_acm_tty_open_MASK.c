#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {size_t index; struct acm* driver_data; int /*<<< orphan*/  flags; } ;
struct file {int dummy; } ;
struct TYPE_13__ {int /*<<< orphan*/  count; int /*<<< orphan*/  flags; } ;
struct acm {int ctrlout; int ctrl_caps; int rx_buflimit; TYPE_7__ port; int /*<<< orphan*/  mutex; TYPE_5__* control; TYPE_3__* ctrlurb; int /*<<< orphan*/  urb_task; scalar_t__ throttle; int /*<<< orphan*/  spare_read_bufs; TYPE_2__* rb; int /*<<< orphan*/  spare_read_urbs; TYPE_1__* ru; int /*<<< orphan*/  filled_read_bufs; scalar_t__ dev; } ;
struct TYPE_12__ {int needs_remote_wakeup; } ;
struct TYPE_11__ {scalar_t__ dev; } ;
struct TYPE_10__ {int /*<<< orphan*/  list; } ;
struct TYPE_9__ {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int ACM_CTRL_DTR ; 
 int ACM_CTRL_RTS ; 
 int /*<<< orphan*/  ASYNCB_INITIALIZED ; 
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TTY_NO_WRITE_SPLIT ; 
 int USB_CDC_CAP_LINE ; 
 scalar_t__ FUNC1 (struct acm*,int) ; 
 struct acm** acm_table ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  open_mutex ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_7__*,struct tty_struct*,struct file*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__*,struct tty_struct*) ; 
 scalar_t__ FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 scalar_t__ FUNC13 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct tty_struct *tty, struct file *filp)
{
	struct acm *acm;
	int rv = -ENODEV;
	int i;
	FUNC2("Entering acm_tty_open.");

	FUNC4(&open_mutex);

	acm = acm_table[tty->index];
	if (!acm || !acm->dev)
		goto err_out;
	else
		rv = 0;

	FUNC6(TTY_NO_WRITE_SPLIT, &tty->flags);

	tty->driver_data = acm;
	FUNC9(&acm->port, tty);

	if (FUNC10(acm->control) < 0)
		goto early_bail;
	else
		acm->control->needs_remote_wakeup = 1;

	FUNC4(&acm->mutex);
	if (acm->port.count++) {
		FUNC11(acm->control);
		goto done;
	}

	acm->ctrlurb->dev = acm->dev;
	if (FUNC13(acm->ctrlurb, GFP_KERNEL)) {
		FUNC2("usb_submit_urb(ctrl irq) failed");
		goto bail_out;
	}

	if (0 > FUNC1(acm, acm->ctrlout = ACM_CTRL_DTR | ACM_CTRL_RTS) &&
	    (acm->ctrl_caps & USB_CDC_CAP_LINE))
		goto full_bailout;

	FUNC11(acm->control);

	FUNC0(&acm->spare_read_urbs);
	FUNC0(&acm->spare_read_bufs);
	FUNC0(&acm->filled_read_bufs);

	for (i = 0; i < acm->rx_buflimit; i++)
		FUNC3(&(acm->ru[i].list), &acm->spare_read_urbs);
	for (i = 0; i < acm->rx_buflimit; i++)
		FUNC3(&(acm->rb[i].list), &acm->spare_read_bufs);

	acm->throttle = 0;

	FUNC6(ASYNCB_INITIALIZED, &acm->port.flags);
	rv = FUNC8(&acm->port, tty, filp);
	FUNC7(&acm->urb_task);
done:
	FUNC5(&acm->mutex);
err_out:
	FUNC5(&open_mutex);
	return rv;

full_bailout:
	FUNC12(acm->ctrlurb);
bail_out:
	FUNC11(acm->control);
	acm->port.count--;
	FUNC5(&acm->mutex);
early_bail:
	FUNC5(&open_mutex);
	FUNC9(&acm->port, NULL);
	return -EIO;
}