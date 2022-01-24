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
struct us_data {unsigned char* iobuf; } ;
struct datafab_info {int lun; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 int USB_STOR_TRANSPORT_ERROR ; 
 int USB_STOR_TRANSPORT_GOOD ; 
 int USB_STOR_XFER_GOOD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct us_data*,unsigned char*,int) ; 
 int FUNC2 (struct us_data*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 unsigned char* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct us_data *us,
				 struct datafab_info *info)
{
	// Dual-slot readers can be thought of as dual-LUN devices.
	// We need to determine which card slot is being used.
	// We'll send an IDENTIFY DEVICE command and see which LUN responds...
	//
	// There might be a better way of doing this?

	static unsigned char scommand[8] = { 0, 1, 0, 0, 0, 0xa0, 0xec, 1 };
	unsigned char *command = us->iobuf;
	unsigned char *buf;
	int count = 0, rc;

	if (!info)
		return USB_STOR_TRANSPORT_ERROR;

	FUNC5(command, scommand, 8);
	buf = FUNC4(512, GFP_NOIO);
	if (!buf)
		return USB_STOR_TRANSPORT_ERROR;

	FUNC0("datafab_determine_lun:  locating...\n");

	// we'll try 3 times before giving up...
	//
	while (count++ < 3) {
		command[5] = 0xa0;

		rc = FUNC2(us, command, 8);
		if (rc != USB_STOR_XFER_GOOD) {
			rc = USB_STOR_TRANSPORT_ERROR;
			goto leave;
		}

		rc = FUNC1(us, buf, 512);
		if (rc == USB_STOR_XFER_GOOD) {
			info->lun = 0;
			rc = USB_STOR_TRANSPORT_GOOD;
			goto leave;
		}

		command[5] = 0xb0;

		rc = FUNC2(us, command, 8);
		if (rc != USB_STOR_XFER_GOOD) {
			rc = USB_STOR_TRANSPORT_ERROR;
			goto leave;
		}

		rc = FUNC1(us, buf, 512);
		if (rc == USB_STOR_XFER_GOOD) {
			info->lun = 1;
			rc = USB_STOR_TRANSPORT_GOOD;
			goto leave;
		}

		FUNC6(20);
	}

	rc = USB_STOR_TRANSPORT_ERROR;

 leave:
	FUNC3(buf);
	return rc;
}