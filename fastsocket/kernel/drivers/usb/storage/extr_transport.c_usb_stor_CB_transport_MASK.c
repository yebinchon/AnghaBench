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
struct us_data {unsigned int recv_bulk_pipe; unsigned int send_bulk_pipe; scalar_t__ protocol; int* iobuf; scalar_t__ subclass; int /*<<< orphan*/  ifnum; int /*<<< orphan*/  send_ctrl_pipe; } ;
struct scsi_cmnd {scalar_t__* cmnd; scalar_t__ sc_data_direction; int /*<<< orphan*/  cmd_len; } ;

/* Variables and functions */
 scalar_t__ DMA_FROM_DEVICE ; 
 scalar_t__ INQUIRY ; 
 scalar_t__ REQUEST_SENSE ; 
 int USB_RECIP_INTERFACE ; 
 int USB_STOR_TRANSPORT_ERROR ; 
 int USB_STOR_TRANSPORT_FAILED ; 
 int USB_STOR_TRANSPORT_GOOD ; 
 int USB_STOR_XFER_GOOD ; 
 int USB_STOR_XFER_STALLED ; 
 int USB_TYPE_CLASS ; 
 int /*<<< orphan*/  US_CBI_ADSC ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 scalar_t__ US_PR_CBI ; 
 scalar_t__ US_SC_UFI ; 
 unsigned int FUNC1 (struct scsi_cmnd*) ; 
 int FUNC2 (struct us_data*,unsigned int,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC3 (struct us_data*,unsigned int) ; 
 int FUNC4 (struct us_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct us_data*,int*,int) ; 

int FUNC6(struct scsi_cmnd *srb, struct us_data *us)
{
	unsigned int transfer_length = FUNC1(srb);
	unsigned int pipe = 0;
	int result;

	/* COMMAND STAGE */
	/* let's send the command via the control pipe */
	result = FUNC4(us, us->send_ctrl_pipe,
				      US_CBI_ADSC, 
				      USB_TYPE_CLASS | USB_RECIP_INTERFACE, 0, 
				      us->ifnum, srb->cmnd, srb->cmd_len);

	/* check the return code for the command */
	FUNC0("Call to usb_stor_ctrl_transfer() returned %d\n", result);

	/* if we stalled the command, it means command failed */
	if (result == USB_STOR_XFER_STALLED) {
		return USB_STOR_TRANSPORT_FAILED;
	}

	/* Uh oh... serious problem here */
	if (result != USB_STOR_XFER_GOOD) {
		return USB_STOR_TRANSPORT_ERROR;
	}

	/* DATA STAGE */
	/* transfer the data payload for this command, if one exists*/
	if (transfer_length) {
		pipe = srb->sc_data_direction == DMA_FROM_DEVICE ? 
				us->recv_bulk_pipe : us->send_bulk_pipe;
		result = FUNC2(us, pipe, srb);
		FUNC0("CBI data stage result is 0x%x\n", result);

		/* if we stalled the data transfer it means command failed */
		if (result == USB_STOR_XFER_STALLED)
			return USB_STOR_TRANSPORT_FAILED;
		if (result > USB_STOR_XFER_STALLED)
			return USB_STOR_TRANSPORT_ERROR;
	}

	/* STATUS STAGE */

	/* NOTE: CB does not have a status stage.  Silly, I know.  So
	 * we have to catch this at a higher level.
	 */
	if (us->protocol != US_PR_CBI)
		return USB_STOR_TRANSPORT_GOOD;

	result = FUNC5(us, us->iobuf, 2);
	FUNC0("Got interrupt data (0x%x, 0x%x)\n", 
			us->iobuf[0], us->iobuf[1]);
	if (result != USB_STOR_XFER_GOOD)
		return USB_STOR_TRANSPORT_ERROR;

	/* UFI gives us ASC and ASCQ, like a request sense
	 *
	 * REQUEST_SENSE and INQUIRY don't affect the sense data on UFI
	 * devices, so we ignore the information for those commands.  Note
	 * that this means we could be ignoring a real error on these
	 * commands, but that can't be helped.
	 */
	if (us->subclass == US_SC_UFI) {
		if (srb->cmnd[0] == REQUEST_SENSE ||
		    srb->cmnd[0] == INQUIRY)
			return USB_STOR_TRANSPORT_GOOD;
		if (us->iobuf[0])
			goto Failed;
		return USB_STOR_TRANSPORT_GOOD;
	}

	/* If not UFI, we interpret the data as a result code 
	 * The first byte should always be a 0x0.
	 *
	 * Some bogus devices don't follow that rule.  They stuff the ASC
	 * into the first byte -- so if it's non-zero, call it a failure.
	 */
	if (us->iobuf[0]) {
		FUNC0("CBI IRQ data showed reserved bType 0x%x\n",
				us->iobuf[0]);
		goto Failed;

	}

	/* The second byte & 0x0F should be 0x0 for good, otherwise error */
	switch (us->iobuf[1] & 0x0F) {
		case 0x00: 
			return USB_STOR_TRANSPORT_GOOD;
		case 0x01: 
			goto Failed;
	}
	return USB_STOR_TRANSPORT_ERROR;

	/* the CBI spec requires that the bulk pipe must be cleared
	 * following any data-in/out command failure (section 2.4.3.1.3)
	 */
  Failed:
	if (pipe)
		FUNC3(us, pipe);
	return USB_STOR_TRANSPORT_FAILED;
}