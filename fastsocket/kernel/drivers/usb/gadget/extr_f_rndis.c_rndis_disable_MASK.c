#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_function {TYPE_1__* config; } ;
struct usb_composite_dev {int dummy; } ;
struct f_rndis {TYPE_2__* notify; int /*<<< orphan*/  port; int /*<<< orphan*/  config; } ;
struct TYPE_4__ {int /*<<< orphan*/ * driver_data; } ;
struct TYPE_3__ {struct usb_composite_dev* cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_composite_dev*,char*) ; 
 struct f_rndis* FUNC1 (struct usb_function*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC5(struct usb_function *f)
{
	struct f_rndis		*rndis = FUNC1(f);
	struct usb_composite_dev *cdev = f->config->cdev;

	if (!rndis->notify->driver_data)
		return;

	FUNC0(cdev, "rndis deactivated\n");

	FUNC3(rndis->config);
	FUNC2(&rndis->port);

	FUNC4(rndis->notify);
	rndis->notify->driver_data = NULL;
}