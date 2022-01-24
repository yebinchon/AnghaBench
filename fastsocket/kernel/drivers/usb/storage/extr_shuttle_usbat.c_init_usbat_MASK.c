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
struct usbat_info {int dummy; } ;
struct us_data {unsigned char* iobuf; scalar_t__ extra; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 unsigned char USBAT_ATA_LBA_HI ; 
 unsigned char USBAT_ATA_LBA_ME ; 
 scalar_t__ USBAT_DEV_FLASH ; 
 int USBAT_FEAT_ET1 ; 
 int USBAT_FEAT_ET2 ; 
 int USBAT_FEAT_ETEN ; 
 int USBAT_UIO_1 ; 
 int USBAT_UIO_EPAD ; 
 int USBAT_UIO_OE0 ; 
 int USBAT_UIO_OE1 ; 
 int USB_STOR_TRANSPORT_ERROR ; 
 int USB_STOR_TRANSPORT_GOOD ; 
 int USB_STOR_XFER_GOOD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct us_data*) ; 
 scalar_t__ FUNC4 (struct us_data*) ; 
 int FUNC5 (struct us_data*,unsigned char*) ; 
 int FUNC6 (struct us_data*) ; 
 int FUNC7 (struct us_data*,int,int,int,int,unsigned char,unsigned char) ; 
 scalar_t__ FUNC8 (struct us_data*,struct usbat_info*,int) ; 
 int FUNC9 (struct us_data*,int,int) ; 

__attribute__((used)) static int FUNC10(struct us_data *us, int devicetype)
{
	int rc;
	struct usbat_info *info;
	unsigned char subcountH = USBAT_ATA_LBA_HI;
	unsigned char subcountL = USBAT_ATA_LBA_ME;
	unsigned char *status = us->iobuf;

	us->extra = FUNC1(sizeof(struct usbat_info), GFP_NOIO);
	if (!us->extra) {
		FUNC0("init_usbat: Gah! Can't allocate storage for usbat info struct!\n");
		return 1;
	}
	info = (struct usbat_info *) (us->extra);

	/* Enable peripheral control signals */
	rc = FUNC9(us,
				 USBAT_UIO_OE1 | USBAT_UIO_OE0,
				 USBAT_UIO_EPAD | USBAT_UIO_1);
	if (rc != USB_STOR_XFER_GOOD)
		return USB_STOR_TRANSPORT_ERROR;

	FUNC0("INIT 1\n");

	FUNC2(2000);

	rc = FUNC5(us, status);
	if (rc != USB_STOR_TRANSPORT_GOOD)
		return rc;

	FUNC0("INIT 2\n");

	rc = FUNC5(us, status);
	if (rc != USB_STOR_XFER_GOOD)
		return USB_STOR_TRANSPORT_ERROR;

	rc = FUNC5(us, status);
	if (rc != USB_STOR_XFER_GOOD)
		return USB_STOR_TRANSPORT_ERROR;

	FUNC0("INIT 3\n");

	rc = FUNC6(us);
	if (rc != USB_STOR_TRANSPORT_GOOD)
		return rc;

	FUNC0("INIT 4\n");

	rc = FUNC5(us, status);
	if (rc != USB_STOR_XFER_GOOD)
		return USB_STOR_TRANSPORT_ERROR;

	FUNC0("INIT 5\n");

	/* Enable peripheral control signals and card detect */
	rc = FUNC3(us);
	if (rc != USB_STOR_TRANSPORT_GOOD)
		return rc;

	FUNC0("INIT 6\n");

	rc = FUNC5(us, status);
	if (rc != USB_STOR_XFER_GOOD)
		return USB_STOR_TRANSPORT_ERROR;

	FUNC0("INIT 7\n");

	FUNC2(1400);

	rc = FUNC5(us, status);
	if (rc != USB_STOR_XFER_GOOD)
		return USB_STOR_TRANSPORT_ERROR;

	FUNC0("INIT 8\n");

	rc = FUNC6(us);
	if (rc != USB_STOR_TRANSPORT_GOOD)
		return rc;

	FUNC0("INIT 9\n");

	/* At this point, we need to detect which device we are using */
	if (FUNC8(us, info, devicetype))
		return USB_STOR_TRANSPORT_ERROR;

	FUNC0("INIT 10\n");

	if (FUNC4(us) == USBAT_DEV_FLASH) { 
		subcountH = 0x02;
		subcountL = 0x00;
	}
	rc = FUNC7(us, (USBAT_FEAT_ETEN | USBAT_FEAT_ET2 | USBAT_FEAT_ET1),
									0x00, 0x88, 0x08, subcountH, subcountL);
	if (rc != USB_STOR_XFER_GOOD)
		return USB_STOR_TRANSPORT_ERROR;

	FUNC0("INIT 11\n");

	return USB_STOR_TRANSPORT_GOOD;
}