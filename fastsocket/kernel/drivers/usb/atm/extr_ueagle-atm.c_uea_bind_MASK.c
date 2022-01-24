#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct usbatm_data {int flags; struct uea_softc* driver_data; } ;
struct TYPE_8__ {int /*<<< orphan*/  kobj; } ;
struct usb_interface {TYPE_4__ dev; TYPE_2__* altsetting; } ;
struct usb_device_id {int driver_info; } ;
struct TYPE_7__ {int /*<<< orphan*/  bcdDevice; } ;
struct usb_device {TYPE_3__ descriptor; } ;
struct uea_softc {size_t modem_index; int driver_info; struct usb_device* usb_dev; void* annex; struct usbatm_data* usbatm; } ;
struct TYPE_5__ {int bInterfaceNumber; } ;
struct TYPE_6__ {TYPE_1__ desc; } ;

/* Variables and functions */
 scalar_t__ ADI930 ; 
 void* ANNEXA ; 
 void* ANNEXB ; 
 int AUTO_ANNEX_A ; 
 int AUTO_ANNEX_B ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t NB_MODEM ; 
 int UDSL_IGNORE_EILSEQ ; 
 int UDSL_SKIP_HEAVY_INIT ; 
 int UDSL_USE_ISOC ; 
 scalar_t__ FUNC0 (struct usb_device_id const*) ; 
 int /*<<< orphan*/  UEA_DS_IFACE_NO ; 
 int UEA_INTR_IFACE_NO ; 
 int /*<<< orphan*/  UEA_US_IFACE_NO ; 
 unsigned int* altsetting ; 
 int* annex ; 
 int /*<<< orphan*/  attr_grp ; 
 int FUNC1 (struct usb_device*,struct usbatm_data*,int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (struct uea_softc*) ; 
 struct uea_softc* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 size_t modem_index ; 
 scalar_t__* sync_wait ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct uea_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_device*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_device*,char*) ; 
 scalar_t__ FUNC13 (struct usb_device*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC14(struct usbatm_data *usbatm, struct usb_interface *intf,
		   const struct usb_device_id *id)
{
	struct usb_device *usb = FUNC2(intf);
	struct uea_softc *sc;
	int ret, ifnum = intf->altsetting->desc.bInterfaceNumber;
	unsigned int alt;

	FUNC10(usb);

	/* interface 0 is for firmware/monitoring */
	if (ifnum != UEA_INTR_IFACE_NO)
		return -ENODEV;

	usbatm->flags = (sync_wait[modem_index] ? 0 : UDSL_SKIP_HEAVY_INIT);

	/* interface 1 is for outbound traffic */
	ret = FUNC1(usb, usbatm, UEA_US_IFACE_NO);
	if (ret < 0)
		return ret;

	/* ADI930 has only 2 interfaces and inbound traffic is on interface 1 */
	if (FUNC0(id) != ADI930) {
		/* interface 2 is for inbound traffic */
		ret = FUNC1(usb, usbatm, UEA_DS_IFACE_NO);
		if (ret < 0)
			return ret;
	}

	sc = FUNC4(sizeof(struct uea_softc), GFP_KERNEL);
	if (!sc) {
		FUNC11(usb, "uea_init: not enough memory !\n");
		return -ENOMEM;
	}

	sc->usb_dev = usb;
	usbatm->driver_data = sc;
	sc->usbatm = usbatm;
	sc->modem_index = (modem_index < NB_MODEM) ? modem_index++ : 0;
	sc->driver_info = id->driver_info;

	/* first try to use module parameter */
	if (annex[sc->modem_index] == 1)
		sc->annex = ANNEXA;
	else if (annex[sc->modem_index] == 2)
		sc->annex = ANNEXB;
	/* try to autodetect annex */
	else if (sc->driver_info & AUTO_ANNEX_A)
		sc->annex = ANNEXA;
	else if (sc->driver_info & AUTO_ANNEX_B)
		sc->annex = ANNEXB;
	else
		sc->annex = (FUNC5(sc->usb_dev->descriptor.bcdDevice) & 0x80)?ANNEXB:ANNEXA;

	alt = altsetting[sc->modem_index];
	/* ADI930 don't support iso */
	if (FUNC0(id) != ADI930 && alt > 0) {
		if (alt <= 8 && FUNC13(usb, UEA_DS_IFACE_NO, alt) == 0) {
			FUNC9(usb, "set alternate %u for 2 interface\n", alt);
			FUNC12(usb, "using iso mode\n");
			usbatm->flags |= UDSL_USE_ISOC | UDSL_IGNORE_EILSEQ;
		} else {
			FUNC11(usb, "setting alternate %u failed for "
					"2 interface, using bulk mode\n", alt);
		}
	}

	ret = FUNC6(&intf->dev.kobj, &attr_grp);
	if (ret < 0)
		goto error;

	ret = FUNC8(sc);
	if (ret < 0)
		goto error_rm_grp;

	return 0;

error_rm_grp:
	FUNC7(&intf->dev.kobj, &attr_grp);
error:
	FUNC3(sc);
	return ret;
}