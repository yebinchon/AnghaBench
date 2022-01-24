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
typedef  int u32 ;
struct usbat_info {int ssize; unsigned long sectors; unsigned char sense_key; unsigned char sense_asc; unsigned char sense_ascq; } ;
struct us_data {unsigned char* iobuf; scalar_t__ extra; } ;
struct scsi_cmnd {scalar_t__* cmnd; } ;
typedef  int /*<<< orphan*/  inquiry_response ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ ALLOW_MEDIUM_REMOVAL ; 
 scalar_t__ INQUIRY ; 
 scalar_t__ MODE_SELECT_10 ; 
 scalar_t__ READ_10 ; 
 scalar_t__ READ_12 ; 
 scalar_t__ READ_CAPACITY ; 
 scalar_t__ REQUEST_SENSE ; 
 scalar_t__ TEST_UNIT_READY ; 
 int USB_STOR_TRANSPORT_ERROR ; 
 int USB_STOR_TRANSPORT_FAILED ; 
 int USB_STOR_TRANSPORT_GOOD ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ WRITE_10 ; 
 scalar_t__ WRITE_12 ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct us_data*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int,struct scsi_cmnd*) ; 
 int FUNC6 (struct us_data*) ; 
 int FUNC7 (struct us_data*,struct usbat_info*) ; 
 int FUNC8 (struct us_data*,struct usbat_info*) ; 
 int FUNC9 (struct us_data*,struct usbat_info*,unsigned long,unsigned long) ; 
 int FUNC10 (struct us_data*,struct usbat_info*,unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC11(struct scsi_cmnd * srb, struct us_data *us)
{
	int rc;
	struct usbat_info *info = (struct usbat_info *) (us->extra);
	unsigned long block, blocks;
	unsigned char *ptr = us->iobuf;
	static unsigned char inquiry_response[36] = {
		0x00, 0x80, 0x00, 0x01, 0x1F, 0x00, 0x00, 0x00
	};

	if (srb->cmnd[0] == INQUIRY) {
		FUNC0("usbat_flash_transport: INQUIRY. Returning bogus response.\n");
		FUNC3(ptr, inquiry_response, sizeof(inquiry_response));
		FUNC2(us, ptr, 36);
		return USB_STOR_TRANSPORT_GOOD;
	}

	if (srb->cmnd[0] == READ_CAPACITY) {
		rc = FUNC7(us, info);
		if (rc != USB_STOR_TRANSPORT_GOOD)
			return rc;

		rc = FUNC8(us, info);
		if (rc != USB_STOR_TRANSPORT_GOOD)
			return rc;

		/* hard coded 512 byte sectors as per ATA spec */
		info->ssize = 0x200;
		FUNC0("usbat_flash_transport: READ_CAPACITY: %ld sectors, %ld bytes per sector\n",
			  info->sectors, info->ssize);

		/*
		 * build the reply
		 * note: must return the sector number of the last sector,
		 * *not* the total number of sectors
		 */
		((__be32 *) ptr)[0] = FUNC1(info->sectors - 1);
		((__be32 *) ptr)[1] = FUNC1(info->ssize);
		FUNC5(ptr, 8, srb);

		return USB_STOR_TRANSPORT_GOOD;
	}

	if (srb->cmnd[0] == MODE_SELECT_10) {
		FUNC0("usbat_flash_transport:  Gah! MODE_SELECT_10.\n");
		return USB_STOR_TRANSPORT_ERROR;
	}

	if (srb->cmnd[0] == READ_10) {
		block = ((u32)(srb->cmnd[2]) << 24) | ((u32)(srb->cmnd[3]) << 16) |
				((u32)(srb->cmnd[4]) <<  8) | ((u32)(srb->cmnd[5]));

		blocks = ((u32)(srb->cmnd[7]) << 8) | ((u32)(srb->cmnd[8]));

		FUNC0("usbat_flash_transport:  READ_10: read block 0x%04lx  count %ld\n", block, blocks);
		return FUNC9(us, info, block, blocks);
	}

	if (srb->cmnd[0] == READ_12) {
		/*
		 * I don't think we'll ever see a READ_12 but support it anyway
		 */
		block = ((u32)(srb->cmnd[2]) << 24) | ((u32)(srb->cmnd[3]) << 16) |
		        ((u32)(srb->cmnd[4]) <<  8) | ((u32)(srb->cmnd[5]));

		blocks = ((u32)(srb->cmnd[6]) << 24) | ((u32)(srb->cmnd[7]) << 16) |
		         ((u32)(srb->cmnd[8]) <<  8) | ((u32)(srb->cmnd[9]));

		FUNC0("usbat_flash_transport: READ_12: read block 0x%04lx  count %ld\n", block, blocks);
		return FUNC9(us, info, block, blocks);
	}

	if (srb->cmnd[0] == WRITE_10) {
		block = ((u32)(srb->cmnd[2]) << 24) | ((u32)(srb->cmnd[3]) << 16) |
		        ((u32)(srb->cmnd[4]) <<  8) | ((u32)(srb->cmnd[5]));

		blocks = ((u32)(srb->cmnd[7]) << 8) | ((u32)(srb->cmnd[8]));

		FUNC0("usbat_flash_transport: WRITE_10: write block 0x%04lx  count %ld\n", block, blocks);
		return FUNC10(us, info, block, blocks);
	}

	if (srb->cmnd[0] == WRITE_12) {
		/*
		 * I don't think we'll ever see a WRITE_12 but support it anyway
		 */
		block = ((u32)(srb->cmnd[2]) << 24) | ((u32)(srb->cmnd[3]) << 16) |
		        ((u32)(srb->cmnd[4]) <<  8) | ((u32)(srb->cmnd[5]));

		blocks = ((u32)(srb->cmnd[6]) << 24) | ((u32)(srb->cmnd[7]) << 16) |
		         ((u32)(srb->cmnd[8]) <<  8) | ((u32)(srb->cmnd[9]));

		FUNC0("usbat_flash_transport: WRITE_12: write block 0x%04lx  count %ld\n", block, blocks);
		return FUNC10(us, info, block, blocks);
	}


	if (srb->cmnd[0] == TEST_UNIT_READY) {
		FUNC0("usbat_flash_transport: TEST_UNIT_READY.\n");

		rc = FUNC7(us, info);
		if (rc != USB_STOR_TRANSPORT_GOOD)
			return rc;

		return FUNC6(us);
	}

	if (srb->cmnd[0] == REQUEST_SENSE) {
		FUNC0("usbat_flash_transport: REQUEST_SENSE.\n");

		FUNC4(ptr, 0, 18);
		ptr[0] = 0xF0;
		ptr[2] = info->sense_key;
		ptr[7] = 11;
		ptr[12] = info->sense_asc;
		ptr[13] = info->sense_ascq;
		FUNC5(ptr, 18, srb);

		return USB_STOR_TRANSPORT_GOOD;
	}

	if (srb->cmnd[0] == ALLOW_MEDIUM_REMOVAL) {
		/*
		 * sure.  whatever.  not like we can stop the user from popping
		 * the media out of the device (no locking doors, etc)
		 */
		return USB_STOR_TRANSPORT_GOOD;
	}

	FUNC0("usbat_flash_transport: Gah! Unknown command: %d (0x%x)\n",
			  srb->cmnd[0], srb->cmnd[0]);
	info->sense_key = 0x05;
	info->sense_asc = 0x20;
	info->sense_ascq = 0x00;
	return USB_STOR_TRANSPORT_FAILED;
}