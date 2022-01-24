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
struct usb_line6 {int /*<<< orphan*/  ifcdev; } ;
struct urb {int dummy; } ;
struct message {char const* buffer; int size; scalar_t__ done; struct usb_line6* line6; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct message*) ; 
 struct message* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct message*,struct urb*) ; 
 struct urb* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct usb_line6 *line6, const char *buffer,
				 int size)
{
	struct message *msg;
	struct urb *urb;

	/* create message: */
	msg = FUNC2(sizeof(struct message), GFP_ATOMIC);

	if (msg == NULL) {
		FUNC0(line6->ifcdev, "Out of memory\n");
		return -ENOMEM;
	}

	/* create URB: */
	urb = FUNC4(0, GFP_ATOMIC);

	if (urb == NULL) {
		FUNC1(msg);
		FUNC0(line6->ifcdev, "Out of memory\n");
		return -ENOMEM;
	}

	/* set message data: */
	msg->line6 = line6;
	msg->buffer = buffer;
	msg->size = size;
	msg->done = 0;

	/* start sending: */
	return FUNC3(msg, urb);
}