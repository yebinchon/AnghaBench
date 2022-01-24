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
struct us_data {scalar_t__ iobuf; } ;
struct scsi_cmnd {int dummy; } ;
struct freecom_xfer_wrap {int Type; int /*<<< orphan*/  Pad; int /*<<< orphan*/  Count; scalar_t__ Timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FCM_PACKET_LENGTH ; 
 int FCM_PACKET_OUTPUT ; 
 int USB_STOR_TRANSPORT_ERROR ; 
 int USB_STOR_TRANSPORT_GOOD ; 
 int USB_STOR_XFER_GOOD ; 
 int USB_STOR_XFER_SHORT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct us_data*,unsigned int,struct scsi_cmnd*) ; 
 int FUNC4 (struct us_data*,unsigned int,struct freecom_xfer_wrap*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5 (struct scsi_cmnd *srb, struct us_data *us,
		int unsigned ipipe, unsigned int opipe, int count)
{
	struct freecom_xfer_wrap *fxfr =
		(struct freecom_xfer_wrap *) us->iobuf;
	int result;

	fxfr->Type = FCM_PACKET_OUTPUT | 0x00;
	fxfr->Timeout = 0;    /* Short timeout for debugging. */
	fxfr->Count = FUNC1 (count);
	FUNC2 (fxfr->Pad, 0, sizeof (fxfr->Pad));

	FUNC0("Write data Freecom! (c=%d)\n", count);

	/* Issue the transfer command. */
	result = FUNC4 (us, opipe, fxfr,
			FCM_PACKET_LENGTH, NULL);
	if (result != USB_STOR_XFER_GOOD) {
		FUNC0 ("Freecom writedata transport error\n");
		return USB_STOR_TRANSPORT_ERROR;
	}

	/* Now transfer all of our blocks. */
	FUNC0("Start of write\n");
	result = FUNC3(us, opipe, srb);

	FUNC0("freecom_writedata done!\n");
	if (result > USB_STOR_XFER_SHORT)
		return USB_STOR_TRANSPORT_ERROR;
	return USB_STOR_TRANSPORT_GOOD;
}