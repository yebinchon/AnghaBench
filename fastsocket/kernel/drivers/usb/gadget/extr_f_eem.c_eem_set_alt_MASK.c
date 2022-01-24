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
struct TYPE_11__ {int is_zlp_ok; int /*<<< orphan*/  cdc_filter; void* out; void* in; TYPE_2__* in_ep; } ;
struct TYPE_10__ {int /*<<< orphan*/  out; int /*<<< orphan*/  in; } ;
struct TYPE_9__ {int /*<<< orphan*/  out; int /*<<< orphan*/  in; } ;
struct f_eem {unsigned int ctrl_id; TYPE_5__ port; TYPE_4__ fs; TYPE_3__ hs; } ;
struct TYPE_8__ {scalar_t__ driver_data; } ;
struct TYPE_7__ {struct usb_composite_dev* cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_composite_dev*,char*) ; 
 int /*<<< orphan*/  DEFAULT_FILTER ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct f_eem* FUNC4 (struct usb_function*) ; 
 struct net_device* FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 

__attribute__((used)) static int FUNC7(struct usb_function *f, unsigned intf, unsigned alt)
{
	struct f_eem		*eem = FUNC4(f);
	struct usb_composite_dev *cdev = f->config->cdev;
	struct net_device	*net;

	/* we know alt == 0, so this is an activation or a reset */
	if (alt != 0)
		goto fail;

	if (intf == eem->ctrl_id) {

		if (eem->port.in_ep->driver_data) {
			FUNC0(cdev, "reset eem\n");
			FUNC6(&eem->port);
		}

		if (!eem->port.in) {
			FUNC0(cdev, "init eem\n");
			eem->port.in = FUNC3(cdev->gadget,
					eem->hs.in, eem->fs.in);
			eem->port.out = FUNC3(cdev->gadget,
					eem->hs.out, eem->fs.out);
		}

		/* zlps should not occur because zero-length EEM packets
		 * will be inserted in those cases where they would occur
		 */
		eem->port.is_zlp_ok = 1;
		eem->port.cdc_filter = DEFAULT_FILTER;
		FUNC0(cdev, "activate eem\n");
		net = FUNC5(&eem->port);
		if (FUNC1(net))
			return FUNC2(net);
	} else
		goto fail;

	return 0;
fail:
	return -EINVAL;
}