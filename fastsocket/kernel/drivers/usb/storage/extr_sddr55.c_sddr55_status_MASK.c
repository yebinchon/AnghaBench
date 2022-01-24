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
struct us_data {unsigned char* iobuf; scalar_t__ extra; } ;
struct sddr55_card_info {unsigned char read_only; scalar_t__ force_read_only; scalar_t__ fatal_error; int /*<<< orphan*/ * pba_to_lba; int /*<<< orphan*/ * lba_to_pba; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int USB_STOR_TRANSPORT_ERROR ; 
 int USB_STOR_TRANSPORT_FAILED ; 
 int USB_STOR_TRANSPORT_GOOD ; 
 int USB_STOR_XFER_GOOD ; 
 int USB_STOR_XFER_SHORT ; 
 int USB_STOR_XFER_STALLED ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct us_data*,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct us_data *us)
{
	int result;
	unsigned char *command = us->iobuf;
	unsigned char *status = us->iobuf;
	struct sddr55_card_info *info = (struct sddr55_card_info *)us->extra;

	/* send command */
	FUNC2(command, 0, 8);
	command[5] = 0xB0;
	command[7] = 0x80;
	result = FUNC3(us,
		DMA_TO_DEVICE, command, 8);

	FUNC0("Result for send_command in status %d\n",
		result);

	if (result != USB_STOR_XFER_GOOD) {
		FUNC4 (4, 0, 0);	/* hardware error */
		return USB_STOR_TRANSPORT_ERROR;
	}

	result = FUNC3(us,
		DMA_FROM_DEVICE, status,	4);

	/* expect to get short transfer if no card fitted */
	if (result == USB_STOR_XFER_SHORT || result == USB_STOR_XFER_STALLED) {
		/* had a short transfer, no card inserted, free map memory */
		FUNC1(info->lba_to_pba);
		FUNC1(info->pba_to_lba);
		info->lba_to_pba = NULL;
		info->pba_to_lba = NULL;

		info->fatal_error = 0;
		info->force_read_only = 0;

		FUNC4 (2, 0x3a, 0);	/* not ready, medium not present */
		return USB_STOR_TRANSPORT_FAILED;
	}

	if (result != USB_STOR_XFER_GOOD) {
		FUNC4 (4, 0, 0);	/* hardware error */
		return USB_STOR_TRANSPORT_FAILED;
	}
	
	/* check write protect status */
	info->read_only = (status[0] & 0x20);

	/* now read status */
	result = FUNC3(us,
		DMA_FROM_DEVICE, status,	2);

	if (result != USB_STOR_XFER_GOOD) {
		FUNC4 (4, 0, 0);	/* hardware error */
	}

	return (result == USB_STOR_XFER_GOOD ?
			USB_STOR_TRANSPORT_GOOD : USB_STOR_TRANSPORT_FAILED);
}