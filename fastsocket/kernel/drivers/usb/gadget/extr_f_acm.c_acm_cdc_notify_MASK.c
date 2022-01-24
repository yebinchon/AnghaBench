#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  unsigned int u16 ;
struct usb_request {unsigned int length; struct usb_cdc_notification* buf; } ;
struct usb_ep {int dummy; } ;
struct usb_cdc_notification {int bmRequestType; void* wLength; void* wIndex; void* wValue; int /*<<< orphan*/  bNotificationType; } ;
struct TYPE_5__ {TYPE_1__* config; } ;
struct TYPE_6__ {TYPE_2__ func; } ;
struct f_acm {int pending; unsigned int ctrl_id; struct usb_request* notify_req; int /*<<< orphan*/  port_num; TYPE_3__ port; int /*<<< orphan*/  lock; struct usb_ep* notify; } ;
struct TYPE_4__ {int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int USB_DIR_IN ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_CLASS ; 
 void* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct usb_ep*,struct usb_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct f_acm *acm, u8 type, u16 value,
		void *data, unsigned length)
{
	struct usb_ep			*ep = acm->notify;
	struct usb_request		*req;
	struct usb_cdc_notification	*notify;
	const unsigned			len = sizeof(*notify) + length;
	void				*buf;
	int				status;

	req = acm->notify_req;
	acm->notify_req = NULL;
	acm->pending = false;

	req->length = len;
	notify = req->buf;
	buf = notify + 1;

	notify->bmRequestType = USB_DIR_IN | USB_TYPE_CLASS
			| USB_RECIP_INTERFACE;
	notify->bNotificationType = type;
	notify->wValue = FUNC1(value);
	notify->wIndex = FUNC1(acm->ctrl_id);
	notify->wLength = FUNC1(length);
	FUNC2(buf, data, length);

	/* ep_queue() can complete immediately if it fills the fifo... */
	FUNC4(&acm->lock);
	status = FUNC5(ep, req, GFP_ATOMIC);
	FUNC3(&acm->lock);

	if (status < 0) {
		FUNC0(acm->port.func.config->cdev,
				"acm ttyGS%d can't notify serial state, %d\n",
				acm->port_num, status);
		acm->notify_req = req;
	}

	return status;
}