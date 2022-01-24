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
struct usb_composite_dev {int dummy; } ;
struct TYPE_5__ {TYPE_1__* config; } ;
struct TYPE_6__ {TYPE_2__ func; } ;
struct f_acm {int pending; int /*<<< orphan*/  lock; int /*<<< orphan*/  serial_state; int /*<<< orphan*/  port_num; scalar_t__ notify_req; TYPE_3__ port; } ;
struct TYPE_4__ {struct usb_composite_dev* cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_composite_dev*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_CDC_NOTIFY_SERIAL_STATE ; 
 int FUNC1 (struct f_acm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct f_acm *acm)
{
	struct usb_composite_dev *cdev = acm->port.func.config->cdev;
	int			status;

	FUNC2(&acm->lock);
	if (acm->notify_req) {
		FUNC0(cdev, "acm ttyGS%d serial state %04x\n",
				acm->port_num, acm->serial_state);
		status = FUNC1(acm, USB_CDC_NOTIFY_SERIAL_STATE,
				0, &acm->serial_state, sizeof(acm->serial_state));
	} else {
		acm->pending = true;
		status = 0;
	}
	FUNC3(&acm->lock);
	return status;
}