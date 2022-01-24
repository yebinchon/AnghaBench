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
struct net_device {int dummy; } ;
struct TYPE_11__ {void* out; void* in; TYPE_2__* in_ep; } ;
struct TYPE_10__ {int /*<<< orphan*/  out; int /*<<< orphan*/  in; } ;
struct TYPE_9__ {int /*<<< orphan*/  out; int /*<<< orphan*/  in; } ;
struct f_gether {TYPE_5__ port; TYPE_4__ fs; TYPE_3__ hs; } ;
struct TYPE_8__ {scalar_t__ driver_data; } ;
struct TYPE_7__ {struct usb_composite_dev* cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_composite_dev*,char*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct f_gether* FUNC4 (struct usb_function*) ; 
 struct net_device* FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 

__attribute__((used)) static int FUNC7(struct usb_function *f, unsigned intf, unsigned alt)
{
	struct f_gether		*geth = FUNC4(f);
	struct usb_composite_dev *cdev = f->config->cdev;
	struct net_device	*net;

	/* we know alt == 0, so this is an activation or a reset */

	if (geth->port.in_ep->driver_data) {
		FUNC0(cdev, "reset cdc subset\n");
		FUNC6(&geth->port);
	}

	FUNC0(cdev, "init + activate cdc subset\n");
	geth->port.in = FUNC3(cdev->gadget,
			geth->hs.in, geth->fs.in);
	geth->port.out = FUNC3(cdev->gadget,
			geth->hs.out, geth->fs.out);

	net = FUNC5(&geth->port);
	return FUNC1(net) ? FUNC2(net) : 0;
}