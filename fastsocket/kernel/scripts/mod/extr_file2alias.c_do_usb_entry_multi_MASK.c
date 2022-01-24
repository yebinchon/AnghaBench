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
struct usb_device_id {int match_flags; int idVendor; int idProduct; int bcdDevice_lo; int bcdDevice_hi; int bDeviceClass; int bInterfaceClass; } ;
struct module {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int USB_DEVICE_ID_MATCH_DEV_HI ; 
 int USB_DEVICE_ID_MATCH_DEV_LO ; 
 int /*<<< orphan*/  FUNC1 (struct usb_device_id*,unsigned int,int,unsigned char,unsigned char,struct module*) ; 

__attribute__((used)) static void FUNC2(struct usb_device_id *id, struct module *mod)
{
	unsigned int devlo, devhi;
	unsigned char chi, clo;
	int ndigits;

	id->match_flags = FUNC0(id->match_flags);
	id->idVendor = FUNC0(id->idVendor);
	id->idProduct = FUNC0(id->idProduct);

	devlo = id->match_flags & USB_DEVICE_ID_MATCH_DEV_LO ?
		FUNC0(id->bcdDevice_lo) : 0x0U;
	devhi = id->match_flags & USB_DEVICE_ID_MATCH_DEV_HI ?
		FUNC0(id->bcdDevice_hi) : ~0x0U;

	/*
	 * Some modules (visor) have empty slots as placeholder for
	 * run-time specification that results in catch-all alias
	 */
	if (!(id->idVendor | id->idProduct | id->bDeviceClass | id->bInterfaceClass))
		return;

	/* Convert numeric bcdDevice range into fnmatch-able pattern(s) */
	for (ndigits = sizeof(id->bcdDevice_lo) * 2 - 1; devlo <= devhi; ndigits--) {
		clo = devlo & 0xf;
		chi = devhi & 0xf;
		if (chi > 9)	/* it's bcd not hex */
			chi = 9;
		devlo >>= 4;
		devhi >>= 4;

		if (devlo == devhi || !ndigits) {
			FUNC1(id, devlo, ndigits, clo, chi, mod);
			break;
		}

		if (clo > 0)
			FUNC1(id, devlo++, ndigits, clo, 9, mod);

		if (chi < 9)
			FUNC1(id, devhi--, ndigits, 0, chi, mod);
	}
}