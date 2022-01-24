#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct usb_function {TYPE_1__* config; } ;
struct usb_composite_dev {int /*<<< orphan*/  gadget; } ;
struct TYPE_11__ {void* out_desc; void* in_desc; TYPE_2__* in; } ;
struct TYPE_10__ {int /*<<< orphan*/  out; int /*<<< orphan*/  in; } ;
struct TYPE_9__ {int /*<<< orphan*/  out; int /*<<< orphan*/  in; } ;
struct f_gser {int /*<<< orphan*/  port_num; TYPE_5__ port; TYPE_4__ fs; TYPE_3__ hs; } ;
struct TYPE_8__ {scalar_t__ driver_data; } ;
struct TYPE_7__ {struct usb_composite_dev* cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_composite_dev*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct f_gser* FUNC2 (struct usb_function*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 

__attribute__((used)) static int FUNC5(struct usb_function *f, unsigned intf, unsigned alt)
{
	struct f_gser		*gser = FUNC2(f);
	struct usb_composite_dev *cdev = f->config->cdev;

	/* we know alt == 0, so this is an activation or a reset */

	if (gser->port.in->driver_data) {
		FUNC0(cdev, "reset generic ttyGS%d\n", gser->port_num);
		FUNC4(&gser->port);
	} else {
		FUNC0(cdev, "activate generic ttyGS%d\n", gser->port_num);
		gser->port.in_desc = FUNC1(cdev->gadget,
				gser->hs.in, gser->fs.in);
		gser->port.out_desc = FUNC1(cdev->gadget,
				gser->hs.out, gser->fs.out);
	}
	FUNC3(&gser->port, gser->port_num);
	return 0;
}