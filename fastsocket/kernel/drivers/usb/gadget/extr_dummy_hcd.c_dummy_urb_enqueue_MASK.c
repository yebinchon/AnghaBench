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
struct usb_hcd {int dummy; } ;
struct urbp {int /*<<< orphan*/  urbp_list; struct urb* urb; } ;
struct urb {scalar_t__ dev; int error_count; int /*<<< orphan*/  pipe; struct urbp* hcpriv; scalar_t__ transfer_buffer_length; int /*<<< orphan*/  transfer_buffer; } ;
struct dummy {scalar_t__ udev; int /*<<< orphan*/  lock; int /*<<< orphan*/  timer; int /*<<< orphan*/  urbp_list; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ PIPE_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dummy*) ; 
 struct dummy* FUNC2 (struct usb_hcd*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct urbp*) ; 
 struct urbp* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int FUNC12 (struct usb_hcd*,struct urb*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14 (
	struct usb_hcd			*hcd,
	struct urb			*urb,
	gfp_t				mem_flags
) {
	struct dummy	*dum;
	struct urbp	*urbp;
	unsigned long	flags;
	int		rc;

	if (!urb->transfer_buffer && urb->transfer_buffer_length)
		return -EINVAL;

	urbp = FUNC4 (sizeof *urbp, mem_flags);
	if (!urbp)
		return -ENOMEM;
	urbp->urb = urb;

	dum = FUNC2 (hcd);
	FUNC7 (&dum->lock, flags);
	rc = FUNC12(hcd, urb);
	if (rc) {
		FUNC3(urbp);
		goto done;
	}

	if (!dum->udev) {
		dum->udev = urb->dev;
		FUNC11 (dum->udev);
	} else if (FUNC10 (dum->udev != urb->dev))
		FUNC0 (FUNC1(dum), "usb_device address has changed!\n");

	FUNC5 (&urbp->urbp_list, &dum->urbp_list);
	urb->hcpriv = urbp;
	if (FUNC13 (urb->pipe) == PIPE_CONTROL)
		urb->error_count = 1;		/* mark as a new urb */

	/* kick the scheduler, it'll do the rest */
	if (!FUNC9 (&dum->timer))
		FUNC6 (&dum->timer, jiffies + 1);

 done:
	FUNC8(&dum->lock, flags);
	return rc;
}