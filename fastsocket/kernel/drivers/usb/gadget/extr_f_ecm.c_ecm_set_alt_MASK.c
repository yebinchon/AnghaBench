#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct usb_function {TYPE_1__* config; } ;
struct usb_composite_dev {int /*<<< orphan*/  gadget; } ;
struct net_device {int dummy; } ;
struct TYPE_14__ {int is_zlp_ok; int /*<<< orphan*/  cdc_filter; void* out; void* in; TYPE_2__* in_ep; } ;
struct TYPE_12__ {int /*<<< orphan*/  out; int /*<<< orphan*/  in; int /*<<< orphan*/  notify; } ;
struct TYPE_11__ {int /*<<< orphan*/  out; int /*<<< orphan*/  in; int /*<<< orphan*/  notify; } ;
struct f_ecm {unsigned int ctrl_id; unsigned int data_id; TYPE_7__ port; TYPE_4__ fs; TYPE_3__ hs; TYPE_5__* notify; void* notify_desc; } ;
struct TYPE_13__ {struct f_ecm* driver_data; } ;
struct TYPE_10__ {scalar_t__ driver_data; } ;
struct TYPE_9__ {struct usb_composite_dev* cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_composite_dev*,char*) ; 
 int /*<<< orphan*/  DEFAULT_FILTER ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_composite_dev*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct f_ecm*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct f_ecm* FUNC6 (struct usb_function*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC9 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,void*) ; 

__attribute__((used)) static int FUNC13(struct usb_function *f, unsigned intf, unsigned alt)
{
	struct f_ecm		*ecm = FUNC6(f);
	struct usb_composite_dev *cdev = f->config->cdev;

	/* Control interface has only altsetting 0 */
	if (intf == ecm->ctrl_id) {
		if (alt != 0)
			goto fail;

		if (ecm->notify->driver_data) {
			FUNC3(cdev, "reset ecm control %d\n", intf);
			FUNC11(ecm->notify);
		} else {
			FUNC3(cdev, "init ecm ctrl %d\n", intf);
			ecm->notify_desc = FUNC5(cdev->gadget,
					ecm->hs.notify,
					ecm->fs.notify);
		}
		FUNC12(ecm->notify, ecm->notify_desc);
		ecm->notify->driver_data = ecm;

	/* Data interface has two altsettings, 0 and 1 */
	} else if (intf == ecm->data_id) {
		if (alt > 1)
			goto fail;

		if (ecm->port.in_ep->driver_data) {
			FUNC0(cdev, "reset ecm\n");
			FUNC10(&ecm->port);
		}

		if (!ecm->port.in) {
			FUNC0(cdev, "init ecm\n");
			ecm->port.in = FUNC5(cdev->gadget,
					ecm->hs.in, ecm->fs.in);
			ecm->port.out = FUNC5(cdev->gadget,
					ecm->hs.out, ecm->fs.out);
		}

		/* CDC Ethernet only sends data in non-default altsettings.
		 * Changing altsettings resets filters, statistics, etc.
		 */
		if (alt == 1) {
			struct net_device	*net;

			/* Enable zlps by default for ECM conformance;
			 * override for musb_hdrc (avoids txdma ovhead)
			 * and sa1100 (can't).
			 */
			ecm->port.is_zlp_ok = !(
				   FUNC8(cdev->gadget)
				|| FUNC7(cdev->gadget)
				);
			ecm->port.cdc_filter = DEFAULT_FILTER;
			FUNC0(cdev, "activate ecm\n");
			net = FUNC9(&ecm->port);
			if (FUNC1(net))
				return FUNC2(net);
		}

		/* NOTE this can be a minor disagreement with the ECM spec,
		 * which says speed notifications will "always" follow
		 * connection notifications.  But we allow one connect to
		 * follow another (if the first is in flight), and instead
		 * just guarantee that a speed notification is always sent.
		 */
		FUNC4(ecm);
	} else
		goto fail;

	return 0;
fail:
	return -EINVAL;
}