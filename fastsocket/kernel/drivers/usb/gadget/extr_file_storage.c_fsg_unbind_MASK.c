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
struct usb_request {int /*<<< orphan*/  buf; } ;
struct usb_gadget {int dummy; } ;
struct lun {scalar_t__ registered; int /*<<< orphan*/  dev; } ;
struct fsg_dev {int nluns; scalar_t__ state; int /*<<< orphan*/  ep0; TYPE_1__* buffhds; int /*<<< orphan*/  thread_notifier; struct lun* luns; int /*<<< orphan*/  atomic_bitflags; struct usb_request* ep0req; } ;
struct TYPE_2__ {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fsg_dev*,char*) ; 
 int /*<<< orphan*/  FSG_STATE_EXIT ; 
 scalar_t__ FSG_STATE_TERMINATED ; 
 int NUM_BUFFERS ; 
 int /*<<< orphan*/  REGISTERED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lun*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dev_attr_file ; 
 int /*<<< orphan*/  dev_attr_ro ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct fsg_dev* FUNC6 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct fsg_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_gadget*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct usb_request*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void /* __init_or_exit */ FUNC12(struct usb_gadget *gadget)
{
	struct fsg_dev		*fsg = FUNC6(gadget);
	int			i;
	struct lun		*curlun;
	struct usb_request	*req = fsg->ep0req;

	FUNC0(fsg, "unbind\n");
	FUNC1(REGISTERED, &fsg->atomic_bitflags);

	/* Unregister the sysfs attribute files and the LUNs */
	for (i = 0; i < fsg->nluns; ++i) {
		curlun = &fsg->luns[i];
		if (curlun->registered) {
			FUNC4(&curlun->dev, &dev_attr_ro);
			FUNC4(&curlun->dev, &dev_attr_file);
			FUNC2(curlun);
			FUNC5(&curlun->dev);
			curlun->registered = 0;
		}
	}

	/* If the thread isn't already dead, tell it to exit now */
	if (fsg->state != FSG_STATE_TERMINATED) {
		FUNC8(fsg, FSG_STATE_EXIT);
		FUNC11(&fsg->thread_notifier);

		/* The cleanup routine waits for this completion also */
		FUNC3(&fsg->thread_notifier);
	}

	/* Free the data buffers */
	for (i = 0; i < NUM_BUFFERS; ++i)
		FUNC7(fsg->buffhds[i].buf);

	/* Free the request and buffer for endpoint 0 */
	if (req) {
		FUNC7(req->buf);
		FUNC10(fsg->ep0, req);
	}

	FUNC9(gadget, NULL);
}