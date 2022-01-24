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
struct f_rndis {unsigned int ctrl_id; unsigned int data_id; TYPE_7__ port; int /*<<< orphan*/  config; TYPE_4__ fs; TYPE_3__ hs; TYPE_5__* notify; void* notify_desc; } ;
struct TYPE_13__ {struct f_rndis* driver_data; } ;
struct TYPE_10__ {scalar_t__ driver_data; } ;
struct TYPE_9__ {struct usb_composite_dev* cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_composite_dev*,char*) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_composite_dev*,char*,unsigned int) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct f_rndis* FUNC5 (struct usb_function*) ; 
 struct net_device* FUNC6 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,void*) ; 

__attribute__((used)) static int FUNC11(struct usb_function *f, unsigned intf, unsigned alt)
{
	struct f_rndis		*rndis = FUNC5(f);
	struct usb_composite_dev *cdev = f->config->cdev;

	/* we know alt == 0 */

	if (intf == rndis->ctrl_id) {
		if (rndis->notify->driver_data) {
			FUNC3(cdev, "reset rndis control %d\n", intf);
			FUNC9(rndis->notify);
		} else {
			FUNC3(cdev, "init rndis ctrl %d\n", intf);
			rndis->notify_desc = FUNC4(cdev->gadget,
					rndis->hs.notify,
					rndis->fs.notify);
		}
		FUNC10(rndis->notify, rndis->notify_desc);
		rndis->notify->driver_data = rndis;

	} else if (intf == rndis->data_id) {
		struct net_device	*net;

		if (rndis->port.in_ep->driver_data) {
			FUNC0(cdev, "reset rndis\n");
			FUNC7(&rndis->port);
		}

		if (!rndis->port.in) {
			FUNC0(cdev, "init rndis\n");
			rndis->port.in = FUNC4(cdev->gadget,
					rndis->hs.in, rndis->fs.in);
			rndis->port.out = FUNC4(cdev->gadget,
					rndis->hs.out, rndis->fs.out);
		}

		/* Avoid ZLPs; they can be troublesome. */
		rndis->port.is_zlp_ok = false;

		/* RNDIS should be in the "RNDIS uninitialized" state,
		 * either never activated or after rndis_uninit().
		 *
		 * We don't want data to flow here until a nonzero packet
		 * filter is set, at which point it enters "RNDIS data
		 * initialized" state ... but we do want the endpoints
		 * to be activated.  It's a strange little state.
		 *
		 * REVISIT the RNDIS gadget code has done this wrong for a
		 * very long time.  We need another call to the link layer
		 * code -- gether_updown(...bool) maybe -- to do it right.
		 */
		rndis->port.cdc_filter = 0;

		FUNC0(cdev, "RNDIS RX/TX early activation ... \n");
		net = FUNC6(&rndis->port);
		if (FUNC1(net))
			return FUNC2(net);

		FUNC8(rndis->config, net,
				&rndis->port.cdc_filter);
	} else
		goto fail;

	return 0;
fail:
	return -EINVAL;
}