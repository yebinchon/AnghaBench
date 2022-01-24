#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct usb_gadget {int dummy; } ;
struct usb_function {int dummy; } ;
struct usb_endpoint_descriptor {int dummy; } ;
struct phonet_port {int /*<<< orphan*/  lock; struct f_phonet* usb; } ;
struct net_device {int dummy; } ;
struct TYPE_9__ {TYPE_2__* config; } ;
struct f_phonet {int /*<<< orphan*/ * out_reqv; TYPE_4__* in_ep; TYPE_4__* out_ep; struct net_device* dev; TYPE_3__ function; } ;
struct TYPE_12__ {unsigned int bInterfaceNumber; } ;
struct TYPE_11__ {unsigned int bInterfaceNumber; } ;
struct TYPE_10__ {struct f_phonet* driver_data; } ;
struct TYPE_8__ {TYPE_1__* cdev; } ;
struct TYPE_7__ {struct usb_gadget* gadget; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct usb_function*) ; 
 struct usb_endpoint_descriptor* FUNC1 (struct usb_gadget*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct f_phonet* FUNC2 (struct usb_function*) ; 
 struct phonet_port* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int phonet_rxq_size ; 
 TYPE_6__ pn_control_intf_desc ; 
 TYPE_5__ pn_data_intf_desc ; 
 int /*<<< orphan*/  pn_fs_sink_desc ; 
 int /*<<< orphan*/  pn_fs_source_desc ; 
 int /*<<< orphan*/  pn_hs_sink_desc ; 
 int /*<<< orphan*/  pn_hs_source_desc ; 
 int /*<<< orphan*/  FUNC5 (struct f_phonet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,struct usb_endpoint_descriptor*) ; 

__attribute__((used)) static int FUNC9(struct usb_function *f, unsigned intf, unsigned alt)
{
	struct f_phonet *fp = FUNC2(f);
	struct usb_gadget *gadget = fp->function.config->cdev->gadget;

	if (intf == pn_control_intf_desc.bInterfaceNumber)
		/* control interface, no altsetting */
		return (alt > 0) ? -EINVAL : 0;

	if (intf == pn_data_intf_desc.bInterfaceNumber) {
		struct net_device *dev = fp->dev;
		struct phonet_port *port = FUNC3(dev);

		/* data intf (0: inactive, 1: active) */
		if (alt > 1)
			return -EINVAL;

		FUNC6(&port->lock);
		FUNC0(f);
		if (alt == 1) {
			struct usb_endpoint_descriptor *out, *in;
			int i;

			out = FUNC1(gadget,
					&pn_hs_sink_desc,
					&pn_fs_sink_desc);
			in = FUNC1(gadget,
					&pn_hs_source_desc,
					&pn_fs_source_desc);
			FUNC8(fp->out_ep, out);
			FUNC8(fp->in_ep, in);

			port->usb = fp;
			fp->out_ep->driver_data = fp;
			fp->in_ep->driver_data = fp;

			FUNC4(dev);
			for (i = 0; i < phonet_rxq_size; i++)
				FUNC5(fp, fp->out_reqv[i], GFP_ATOMIC);
		}
		FUNC7(&port->lock);
		return 0;
	}

	return -EINVAL;
}