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
struct wusbhc {int dummy; } ;
struct usb_encryption_descriptor {int bLength; scalar_t__ bEncryptionType; int bEncryptionValue; int bAuthKeyIndex; } ;
struct wusb_dev {struct usb_encryption_descriptor ccm1_etd; } ;
struct usb_security_descriptor {int /*<<< orphan*/  wTotalLength; } ;
struct device {int dummy; } ;
struct usb_device {struct device dev; } ;
typedef  int /*<<< orphan*/  secd ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USB_DT_SECURITY ; 
 scalar_t__ USB_ENC_TYPE_CCM_1 ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_security_descriptor*) ; 
 struct usb_security_descriptor* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct usb_security_descriptor* FUNC4 (struct usb_security_descriptor*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,int,char*,char*,int,int) ; 
 int FUNC7 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct usb_security_descriptor*,int) ; 
 char* FUNC8 (scalar_t__) ; 

int FUNC9(struct wusbhc *wusbhc,
		     struct usb_device *usb_dev, struct wusb_dev *wusb_dev)
{
	int result, bytes, secd_size;
	struct device *dev = &usb_dev->dev;
	struct usb_security_descriptor *secd;
	const struct usb_encryption_descriptor *etd, *ccm1_etd = NULL;
	const void *itr, *top;
	char buf[64];

	secd = FUNC3(sizeof(struct usb_security_descriptor), GFP_KERNEL);
	if (secd == NULL) {
		result = -ENOMEM;
		goto out;
	}

	result = FUNC7(usb_dev, USB_DT_SECURITY,
				    0, secd, sizeof(struct usb_security_descriptor));
	if (result < sizeof(secd)) {
		FUNC1(dev, "Can't read security descriptor or "
			"not enough data: %d\n", result);
		goto out;
	}
	secd_size = FUNC5(secd->wTotalLength);
	secd = FUNC4(secd, secd_size, GFP_KERNEL);
	if (secd == NULL) {
		FUNC1(dev, "Can't allocate space for security descriptors\n");
		goto out;
	}
	result = FUNC7(usb_dev, USB_DT_SECURITY,
				    0, secd, secd_size);
	if (result < secd_size) {
		FUNC1(dev, "Can't read security descriptor or "
			"not enough data: %d\n", result);
		goto out;
	}
	bytes = 0;
	itr = &secd[1];
	top = (void *)secd + result;
	while (itr < top) {
		etd = itr;
		if (top - itr < sizeof(*etd)) {
			FUNC1(dev, "BUG: bad device security descriptor; "
				"not enough data (%zu vs %zu bytes left)\n",
				top - itr, sizeof(*etd));
			break;
		}
		if (etd->bLength < sizeof(*etd)) {
			FUNC1(dev, "BUG: bad device encryption descriptor; "
				"descriptor is too short "
				"(%u vs %zu needed)\n",
				etd->bLength, sizeof(*etd));
			break;
		}
		itr += etd->bLength;
		bytes += FUNC6(buf + bytes, sizeof(buf) - bytes,
				  "%s (0x%02x/%02x) ",
				  FUNC8(etd->bEncryptionType),
				  etd->bEncryptionValue, etd->bAuthKeyIndex);
		if (etd->bEncryptionType == USB_ENC_TYPE_CCM_1)
			ccm1_etd = etd;
	}
	/* This code only supports CCM1 as of now. */
	/* FIXME: user has to choose which sec mode to use?
	 * In theory we want CCM */
	if (ccm1_etd == NULL) {
		FUNC1(dev, "WUSB device doesn't support CCM1 encryption, "
			"can't use!\n");
		result = -EINVAL;
		goto out;
	}
	wusb_dev->ccm1_etd = *ccm1_etd;
	FUNC0(dev, "supported encryption: %s; using %s (0x%02x/%02x)\n",
		buf, FUNC8(ccm1_etd->bEncryptionType),
		ccm1_etd->bEncryptionValue, ccm1_etd->bAuthKeyIndex);
	result = 0;
out:
	FUNC2(secd);
	return result;
}