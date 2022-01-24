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
struct usb_gadgetfs_event {int type; } ;
struct dev_data {int setup_abort; unsigned int ev_next; struct usb_gadgetfs_event* event; int /*<<< orphan*/  state; } ;
typedef  enum usb_gadgetfs_event_type { ____Placeholder_usb_gadgetfs_event_type } usb_gadgetfs_event_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct dev_data*,char*,unsigned int,int) ; 
#define  GADGETFS_CONNECT 131 
#define  GADGETFS_DISCONNECT 130 
#define  GADGETFS_SETUP 129 
#define  GADGETFS_SUSPEND 128 
 scalar_t__ N_EVENT ; 
 int /*<<< orphan*/  STATE_DEV_SETUP ; 
 int /*<<< orphan*/  FUNC3 (struct dev_data*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_gadgetfs_event*,struct usb_gadgetfs_event*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_gadgetfs_event*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct usb_gadgetfs_event *
FUNC6 (struct dev_data *dev, enum usb_gadgetfs_event_type type)
{
	struct usb_gadgetfs_event	*event;
	unsigned			i;

	switch (type) {
	/* these events purge the queue */
	case GADGETFS_DISCONNECT:
		if (dev->state == STATE_DEV_SETUP)
			dev->setup_abort = 1;
		// FALL THROUGH
	case GADGETFS_CONNECT:
		dev->ev_next = 0;
		break;
	case GADGETFS_SETUP:		/* previous request timed out */
	case GADGETFS_SUSPEND:		/* same effect */
		/* these events can't be repeated */
		for (i = 0; i != dev->ev_next; i++) {
			if (dev->event [i].type != type)
				continue;
			FUNC2(dev, "discard old event[%d] %d\n", i, type);
			dev->ev_next--;
			if (i == dev->ev_next)
				break;
			/* indices start at zero, for simplicity */
			FUNC4 (&dev->event [i], &dev->event [i + 1],
				sizeof (struct usb_gadgetfs_event)
					* (dev->ev_next - i));
		}
		break;
	default:
		FUNC0 ();
	}
	FUNC3(dev, "event[%d] = %d\n", dev->ev_next, type);
	event = &dev->event [dev->ev_next++];
	FUNC1 (dev->ev_next > N_EVENT);
	FUNC5 (event, 0, sizeof *event);
	event->type = type;
	return event;
}