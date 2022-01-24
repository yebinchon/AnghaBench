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
struct urb {scalar_t__ number_of_packets; scalar_t__ interval; int /*<<< orphan*/  complete; scalar_t__ hcpriv; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {struct urb* urb; } ;
struct mimio {int greeted; TYPE_1__ in; int /*<<< orphan*/  udev; scalar_t__ present; int /*<<< orphan*/  open; } ;
struct input_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  disconnect_sem ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct mimio* FUNC3 (struct input_dev*) ; 
 int FUNC4 (struct mimio*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct input_dev *idev)
{
	int rslt;
	struct mimio *mimio;

	rslt = 0;
	FUNC2(&disconnect_sem);
	mimio = FUNC3(idev);
	FUNC0(&idev->dev, "mimio_open\n");

	if (mimio == NULL) {
		FUNC1(&idev->dev, "null mimio.\n");
		rslt = -ENODEV;
		goto exit;
	}

	if (mimio->open++)
		goto exit;

	if (mimio->present && !mimio->greeted) {
		struct urb *urb = mimio->in.urb;
		mimio->in.urb->dev = mimio->udev;
		rslt = FUNC6(mimio->in.urb, GFP_KERNEL);
		if (rslt) {
			FUNC1(&idev->dev, "usb_submit_urb failure "
				"(res = %d: %s). Not greeting.\n",
				rslt,
				(!urb ? "urb is NULL" :
				 (urb->hcpriv ? "urb->hcpriv is non-NULL" :
				  (!urb->complete ? "urb is not complete" :
				   (urb->number_of_packets <= 0 ? "urb has no packets" :
				    (urb->interval <= 0 ? "urb interval too small" :
				     "urb interval too large or some other error"))))));
			rslt = -EIO;
			goto exit;
		}
		rslt = FUNC4(mimio);
		if (rslt == 0) {
			FUNC0(&idev->dev, "Mimio greeted OK.\n");
			mimio->greeted = 1;
		} else {
			FUNC0(&idev->dev, "Mimio greet Failure (%d)\n",
				rslt);
		}
	}

exit:
	FUNC5(&disconnect_sem);
	return rslt;
}