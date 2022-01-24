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
struct usbtest_dev {scalar_t__ buf; } ;
struct usb_config_descriptor {int bDescriptorType; int bLength; int bmAttributes; int /*<<< orphan*/  wTotalLength; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usbtest_dev*,char*) ; 
 int TBUF_SIZE ; 
#define  USB_DT_CONFIG 129 
#define  USB_DT_OTHER_SPEED_CONFIG 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  realworld ; 

__attribute__((used)) static int FUNC2(struct usbtest_dev *tdev, int len)
{
	struct usb_config_descriptor	*config;

	if (len < sizeof *config)
		return 0;
	config = (struct usb_config_descriptor *) tdev->buf;

	switch (config->bDescriptorType) {
	case USB_DT_CONFIG:
	case USB_DT_OTHER_SPEED_CONFIG:
		if (config->bLength != 9) {
			FUNC0(tdev, "bogus config descriptor length\n");
			return 0;
		}
		/* this bit 'must be 1' but often isn't */
		if (!realworld && !(config->bmAttributes & 0x80)) {
			FUNC0(tdev, "high bit of config attributes not set\n");
			return 0;
		}
		if (config->bmAttributes & 0x1f) {	/* reserved == 0 */
			FUNC0(tdev, "reserved config bits set\n");
			return 0;
		}
		break;
	default:
		return 0;
	}

	if (FUNC1(config->wTotalLength) == len)		/* read it all */
		return 1;
	if (FUNC1(config->wTotalLength) >= TBUF_SIZE)		/* max partial read */
		return 1;
	FUNC0(tdev, "bogus config descriptor read size\n");
	return 0;
}