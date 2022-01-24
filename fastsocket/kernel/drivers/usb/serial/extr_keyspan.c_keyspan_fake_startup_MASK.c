#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_serial {TYPE_2__* dev; } ;
struct ihex_binrec {int /*<<< orphan*/  len; scalar_t__ data; int /*<<< orphan*/  addr; } ;
struct firmware {scalar_t__ data; } ;
struct TYPE_3__ {int /*<<< orphan*/  idProduct; int /*<<< orphan*/  bcdDevice; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; TYPE_1__ descriptor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC4 (struct usb_serial*,int) ; 
 int FUNC5 (struct usb_serial*,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ,int) ; 
 struct ihex_binrec* FUNC6 (struct ihex_binrec const*) ; 
#define  keyspan_mpr_pre_product_id 139 
#define  keyspan_usa18x_pre_product_id 138 
#define  keyspan_usa19_pre_product_id 137 
#define  keyspan_usa19qi_pre_product_id 136 
#define  keyspan_usa19qw_pre_product_id 135 
#define  keyspan_usa19w_pre_product_id 134 
#define  keyspan_usa28_pre_product_id 133 
#define  keyspan_usa28x_pre_product_id 132 
#define  keyspan_usa28xa_pre_product_id 131 
#define  keyspan_usa28xb_pre_product_id 130 
#define  keyspan_usa49w_pre_product_id 129 
#define  keyspan_usa49wlc_pre_product_id 128 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct firmware const*) ; 
 scalar_t__ FUNC9 (struct firmware const**,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct usb_serial *serial)
{
	int 				response;
	const struct ihex_binrec 	*record;
	char				*fw_name;
	const struct firmware		*fw;

	FUNC2("Keyspan startup version %04x product %04x",
	    FUNC7(serial->dev->descriptor.bcdDevice),
	    FUNC7(serial->dev->descriptor.idProduct));

	if ((FUNC7(serial->dev->descriptor.bcdDevice) & 0x8000)
								!= 0x8000) {
		FUNC2("Firmware already loaded.  Quitting.");
		return 1;
	}

		/* Select firmware image on the basis of idProduct */
	switch (FUNC7(serial->dev->descriptor.idProduct)) {
	case keyspan_usa28_pre_product_id:
		fw_name = "keyspan/usa28.fw";
		break;

	case keyspan_usa28x_pre_product_id:
		fw_name = "keyspan/usa28x.fw";
		break;

	case keyspan_usa28xa_pre_product_id:
		fw_name = "keyspan/usa28xa.fw";
		break;

	case keyspan_usa28xb_pre_product_id:
		fw_name = "keyspan/usa28xb.fw";
		break;

	case keyspan_usa19_pre_product_id:
		fw_name = "keyspan/usa19.fw";
		break;

	case keyspan_usa19qi_pre_product_id:
		fw_name = "keyspan/usa19qi.fw";
		break;

	case keyspan_mpr_pre_product_id:
		fw_name = "keyspan/mpr.fw";
		break;

	case keyspan_usa19qw_pre_product_id:
		fw_name = "keyspan/usa19qw.fw";
		break;

	case keyspan_usa18x_pre_product_id:
		fw_name = "keyspan/usa18x.fw";
		break;

	case keyspan_usa19w_pre_product_id:
		fw_name = "keyspan/usa19w.fw";
		break;

	case keyspan_usa49w_pre_product_id:
		fw_name = "keyspan/usa49w.fw";
		break;

	case keyspan_usa49wlc_pre_product_id:
		fw_name = "keyspan/usa49wlc.fw";
		break;

	default:
		FUNC3(&serial->dev->dev, "Unknown product ID (%04x)\n",
			FUNC7(serial->dev->descriptor.idProduct));
		return 1;
	}

	if (FUNC9(&fw, fw_name, &serial->dev->dev)) {
		FUNC3(&serial->dev->dev, "Required keyspan firmware image (%s) unavailable.\n", fw_name);
		return(1);
	}

	FUNC2("Uploading Keyspan %s firmware.", fw_name);

		/* download the firmware image */
	response = FUNC4(serial, 1);

	record = (const struct ihex_binrec *)fw->data;

	while (record) {
		response = FUNC5(serial, FUNC1(record->addr),
					     (unsigned char *)record->data,
					     FUNC0(record->len), 0xa0);
		if (response < 0) {
			FUNC3(&serial->dev->dev, "ezusb_writememory failed for Keyspan firmware (%d %04X %p %d)\n",
				response, FUNC1(record->addr),
				record->data, FUNC0(record->len));
			break;
		}
		record = FUNC6(record);
	}
	FUNC8(fw);
		/* bring device out of reset. Renumeration will occur in a
		   moment and the new device will bind to the real driver */
	response = FUNC4(serial, 0);

	/* we don't want this device to have a driver assigned to it. */
	return 1;
}