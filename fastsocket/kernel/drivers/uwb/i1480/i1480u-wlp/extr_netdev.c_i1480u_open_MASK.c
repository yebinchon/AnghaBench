#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wlp {int /*<<< orphan*/  pal; int /*<<< orphan*/  wss; struct uwb_rc* rc; } ;
struct uwb_rc {int dummy; } ;
struct net_device {int dummy; } ;
struct i1480u {int /*<<< orphan*/  notif_urb; TYPE_1__* usb_iface; struct wlp wlp; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i1480u*) ; 
 int FUNC2 (struct i1480u*) ; 
 struct i1480u* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct net_device*,int /*<<< orphan*/ *) ; 

int FUNC11(struct net_device *net_dev)
{
	int result;
	struct i1480u *i1480u = FUNC3(net_dev);
	struct wlp *wlp = &i1480u->wlp;
	struct uwb_rc *rc;
	struct device *dev = &i1480u->usb_iface->dev;

	rc = wlp->rc;
	result = FUNC2(i1480u);		/* Alloc RX stuff */
	if (result < 0)
		goto error_rx_setup;

	result = FUNC8(&wlp->pal);
	if (result < 0)
		goto error_radio_start;

	FUNC5(net_dev);
#ifdef i1480u_FLOW_CONTROL
	result = usb_submit_urb(i1480u->notif_urb, GFP_KERNEL);
	if (result < 0) {
		dev_err(dev, "Can't submit notification URB: %d\n", result);
		goto error_notif_urb_submit;
	}
#endif
	/* Interface is up with an address, now we can create WSS */
	result = FUNC10(net_dev, &wlp->wss);
	if (result < 0) {
		FUNC0(dev, "Can't create WSS: %d. \n", result);
		goto error_wss_setup;
	}
	return 0;
error_wss_setup:
#ifdef i1480u_FLOW_CONTROL
	usb_kill_urb(i1480u->notif_urb);
error_notif_urb_submit:
#endif
	FUNC9(&wlp->pal);
error_radio_start:
	FUNC4(net_dev);
	FUNC1(i1480u);
error_rx_setup:
	return result;
}