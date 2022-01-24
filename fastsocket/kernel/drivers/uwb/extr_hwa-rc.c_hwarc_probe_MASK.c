#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct uwb_rc {int /*<<< orphan*/ * filter_event; int /*<<< orphan*/ * filter_cmd; int /*<<< orphan*/  reset; int /*<<< orphan*/  cmd; int /*<<< orphan*/  stop; int /*<<< orphan*/  start; int /*<<< orphan*/  owner; } ;
struct device {int dummy; } ;
struct usb_interface {struct device dev; } ;
struct usb_device_id {int driver_info; } ;
struct hwarc {int /*<<< orphan*/  usb_dev; struct uwb_rc* uwb_rc; int /*<<< orphan*/  usb_iface; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int WUSB_QUIRK_WHCI_CMD_EVT ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  hwarc_cmd ; 
 int /*<<< orphan*/ * hwarc_filter_cmd ; 
 int /*<<< orphan*/ * hwarc_filter_event ; 
 int FUNC1 (struct uwb_rc*) ; 
 int /*<<< orphan*/  FUNC2 (struct hwarc*) ; 
 int /*<<< orphan*/  hwarc_neep_init ; 
 int /*<<< orphan*/  hwarc_neep_release ; 
 int /*<<< orphan*/  hwarc_reset ; 
 int /*<<< orphan*/  FUNC3 (struct usb_interface*) ; 
 struct hwarc* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_interface*,struct hwarc*) ; 
 int FUNC10 (struct uwb_rc*,struct device*,struct hwarc*) ; 
 struct uwb_rc* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct uwb_rc*) ; 
 int /*<<< orphan*/  FUNC13 (struct uwb_rc*) ; 

__attribute__((used)) static int FUNC14(struct usb_interface *iface,
		       const struct usb_device_id *id)
{
	int result;
	struct uwb_rc *uwb_rc;
	struct hwarc *hwarc;
	struct device *dev = &iface->dev;

	result = -ENOMEM;
	uwb_rc = FUNC11();
	if (uwb_rc == NULL) {
		FUNC0(dev, "unable to allocate RC instance\n");
		goto error_rc_alloc;
	}
	hwarc = FUNC4(sizeof(*hwarc), GFP_KERNEL);
	if (hwarc == NULL) {
		FUNC0(dev, "unable to allocate HWA RC instance\n");
		goto error_alloc;
	}
	FUNC2(hwarc);
	hwarc->usb_dev = FUNC5(FUNC3(iface));
	hwarc->usb_iface = FUNC6(iface);
	hwarc->uwb_rc = uwb_rc;

	uwb_rc->owner = THIS_MODULE;
	uwb_rc->start = hwarc_neep_init;
	uwb_rc->stop  = hwarc_neep_release;
	uwb_rc->cmd   = hwarc_cmd;
	uwb_rc->reset = hwarc_reset;
	if (id->driver_info & WUSB_QUIRK_WHCI_CMD_EVT) {
		uwb_rc->filter_cmd   = NULL;
		uwb_rc->filter_event = NULL;
	} else {
		uwb_rc->filter_cmd   = hwarc_filter_cmd;
		uwb_rc->filter_event = hwarc_filter_event;
	}

	result = FUNC10(uwb_rc, dev, hwarc);
	if (result < 0)
		goto error_rc_add;
	result = FUNC1(uwb_rc);
	if (result < 0) {
		FUNC0(dev, "cannot retrieve version of RC \n");
		goto error_get_version;
	}
	FUNC9(iface, hwarc);
	return 0;

error_get_version:
	FUNC13(uwb_rc);
error_rc_add:
	FUNC8(iface);
	FUNC7(hwarc->usb_dev);
error_alloc:
	FUNC12(uwb_rc);
error_rc_alloc:
	return result;
}