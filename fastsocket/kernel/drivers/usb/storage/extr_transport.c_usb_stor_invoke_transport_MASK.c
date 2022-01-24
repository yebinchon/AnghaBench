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
struct us_data {int (* transport ) (struct scsi_cmnd*,struct us_data*) ;scalar_t__ protocol; int fflags; scalar_t__ subclass; int /*<<< orphan*/  dflags; int /*<<< orphan*/  (* transport_reset ) (struct us_data*) ;int /*<<< orphan*/  dev_mutex; struct scsi_cmnd* srb; } ;
struct scsi_eh_save {int dummy; } ;
struct scsi_cmnd {int result; scalar_t__ sc_data_direction; int* cmnd; int cmd_len; int* sense_buffer; scalar_t__ underflow; } ;

/* Variables and functions */
 int ATA_12 ; 
 int ATA_16 ; 
 int DID_ABORT ; 
 int DID_ERROR ; 
 scalar_t__ DMA_FROM_DEVICE ; 
 int HARDWARE_ERROR ; 
 int INQUIRY ; 
 int LOG_SENSE ; 
 int MODE_SENSE ; 
 int MODE_SENSE_10 ; 
 int REQUEST_SENSE ; 
 void* SAM_STAT_CHECK_CONDITION ; 
 void* SAM_STAT_GOOD ; 
 int USB_STOR_TRANSPORT_ERROR ; 
 int USB_STOR_TRANSPORT_FAILED ; 
 int USB_STOR_TRANSPORT_GOOD ; 
 int USB_STOR_TRANSPORT_NO_SENSE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  US_FLIDX_ABORTING ; 
 int /*<<< orphan*/  US_FLIDX_RESETTING ; 
 int /*<<< orphan*/  US_FLIDX_TIMED_OUT ; 
 int US_FL_BAD_SENSE ; 
 int US_FL_SANE_SENSE ; 
 int US_FL_SCM_MULT_TARG ; 
 scalar_t__ US_PR_CB ; 
 scalar_t__ US_PR_DPCM_USB ; 
 scalar_t__ US_SC_CYP_ATACB ; 
 scalar_t__ US_SC_RBC ; 
 scalar_t__ US_SC_SCSI ; 
 int US_SENSE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct us_data*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_cmnd*,struct scsi_eh_save*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_cmnd*,struct scsi_eh_save*) ; 
 scalar_t__ FUNC8 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct scsi_cmnd*,struct us_data*) ; 
 int FUNC14 (struct scsi_cmnd*,struct us_data*) ; 
 int /*<<< orphan*/  FUNC15 (struct us_data*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (struct us_data*) ; 
 int FUNC19 (struct us_data*) ; 
 int /*<<< orphan*/  FUNC20 (struct us_data*) ; 
 int /*<<< orphan*/  FUNC21 (int,int,int) ; 

void FUNC22(struct scsi_cmnd *srb, struct us_data *us)
{
	int need_auto_sense;
	int result;

	/* send the command to the transport layer */
	FUNC10(srb, 0);
	result = us->transport(srb, us);

	/* if the command gets aborted by the higher layers, we need to
	 * short-circuit all other processing
	 */
	if (FUNC16(US_FLIDX_TIMED_OUT, &us->dflags)) {
		FUNC0("-- command was aborted\n");
		srb->result = DID_ABORT << 16;
		goto Handle_Errors;
	}

	/* if there is a transport error, reset and don't auto-sense */
	if (result == USB_STOR_TRANSPORT_ERROR) {
		FUNC0("-- transport indicates error, resetting\n");
		srb->result = DID_ERROR << 16;
		goto Handle_Errors;
	}

	/* if the transport provided its own sense data, don't auto-sense */
	if (result == USB_STOR_TRANSPORT_NO_SENSE) {
		srb->result = SAM_STAT_CHECK_CONDITION;
		FUNC2(us, srb);
		return;
	}

	srb->result = SAM_STAT_GOOD;

	/* Determine if we need to auto-sense
	 *
	 * I normally don't use a flag like this, but it's almost impossible
	 * to understand what's going on here if I don't.
	 */
	need_auto_sense = 0;

	/*
	 * If we're running the CB transport, which is incapable
	 * of determining status on its own, we will auto-sense
	 * unless the operation involved a data-in transfer.  Devices
	 * can signal most data-in errors by stalling the bulk-in pipe.
	 */
	if ((us->protocol == US_PR_CB || us->protocol == US_PR_DPCM_USB) &&
			srb->sc_data_direction != DMA_FROM_DEVICE) {
		FUNC0("-- CB transport device requiring auto-sense\n");
		need_auto_sense = 1;
	}

	/*
	 * If we have a failure, we're going to do a REQUEST_SENSE 
	 * automatically.  Note that we differentiate between a command
	 * "failure" and an "error" in the transport mechanism.
	 */
	if (result == USB_STOR_TRANSPORT_FAILED) {
		FUNC0("-- transport indicates command failure\n");
		need_auto_sense = 1;
	}

	/*
	 * Determine if this device is SAT by seeing if the
	 * command executed successfully.  Otherwise we'll have
	 * to wait for at least one CHECK_CONDITION to determine
	 * SANE_SENSE support
	 */
	if (FUNC17((srb->cmnd[0] == ATA_16 || srb->cmnd[0] == ATA_12) &&
	    result == USB_STOR_TRANSPORT_GOOD &&
	    !(us->fflags & US_FL_SANE_SENSE) &&
	    !(us->fflags & US_FL_BAD_SENSE) &&
	    !(srb->cmnd[2] & 0x20))) {
		FUNC0("-- SAT supported, increasing auto-sense\n");
		us->fflags |= US_FL_SANE_SENSE;
	}

	/*
	 * A short transfer on a command where we don't expect it
	 * is unusual, but it doesn't mean we need to auto-sense.
	 */
	if ((FUNC8(srb) > 0) &&
	    !((srb->cmnd[0] == REQUEST_SENSE) ||
	      (srb->cmnd[0] == INQUIRY) ||
	      (srb->cmnd[0] == MODE_SENSE) ||
	      (srb->cmnd[0] == LOG_SENSE) ||
	      (srb->cmnd[0] == MODE_SENSE_10))) {
		FUNC0("-- unexpectedly short transfer\n");
	}

	/* Now, if we need to do the auto-sense, let's do it */
	if (need_auto_sense) {
		int temp_result;
		struct scsi_eh_save ses;
		int sense_size = US_SENSE_SIZE;

		/* device supports and needs bigger sense buffer */
		if (us->fflags & US_FL_SANE_SENSE)
			sense_size = ~0;
Retry_Sense:
		FUNC0("Issuing auto-REQUEST_SENSE\n");

		FUNC6(srb, &ses, NULL, 0, sense_size);

		/* FIXME: we must do the protocol translation here */
		if (us->subclass == US_SC_RBC || us->subclass == US_SC_SCSI ||
				us->subclass == US_SC_CYP_ATACB)
			srb->cmd_len = 6;
		else
			srb->cmd_len = 12;

		/* issue the auto-sense command */
		FUNC10(srb, 0);
		temp_result = us->transport(us->srb, us);

		/* let's clean up right away */
		FUNC7(srb, &ses);

		if (FUNC16(US_FLIDX_TIMED_OUT, &us->dflags)) {
			FUNC0("-- auto-sense aborted\n");
			srb->result = DID_ABORT << 16;

			/* If SANE_SENSE caused this problem, disable it */
			if (sense_size != US_SENSE_SIZE) {
				us->fflags &= ~US_FL_SANE_SENSE;
				us->fflags |= US_FL_BAD_SENSE;
			}
			goto Handle_Errors;
		}

		/* Some devices claim to support larger sense but fail when
		 * trying to request it. When a transport failure happens
		 * using US_FS_SANE_SENSE, we always retry with a standard
		 * (small) sense request. This fixes some USB GSM modems
		 */
		if (temp_result == USB_STOR_TRANSPORT_FAILED &&
				sense_size != US_SENSE_SIZE) {
			FUNC0("-- auto-sense failure, retry small sense\n");
			sense_size = US_SENSE_SIZE;
			us->fflags &= ~US_FL_SANE_SENSE;
			us->fflags |= US_FL_BAD_SENSE;
			goto Retry_Sense;
		}

		/* Other failures */
		if (temp_result != USB_STOR_TRANSPORT_GOOD) {
			FUNC0("-- auto-sense failure\n");

			/* we skip the reset if this happens to be a
			 * multi-target device, since failure of an
			 * auto-sense is perfectly valid
			 */
			srb->result = DID_ERROR << 16;
			if (!(us->fflags & US_FL_SCM_MULT_TARG))
				goto Handle_Errors;
			return;
		}

		/* If the sense data returned is larger than 18-bytes then we
		 * assume this device supports requesting more in the future.
		 * The response code must be 70h through 73h inclusive.
		 */
		if (srb->sense_buffer[7] > (US_SENSE_SIZE - 8) &&
		    !(us->fflags & US_FL_SANE_SENSE) &&
		    !(us->fflags & US_FL_BAD_SENSE) &&
		    (srb->sense_buffer[0] & 0x7C) == 0x70) {
			FUNC0("-- SANE_SENSE support enabled\n");
			us->fflags |= US_FL_SANE_SENSE;

			/* Indicate to the user that we truncated their sense
			 * because we didn't know it supported larger sense.
			 */
			FUNC0("-- Sense data truncated to %i from %i\n",
			          US_SENSE_SIZE,
			          srb->sense_buffer[7] + 8);
			srb->sense_buffer[7] = (US_SENSE_SIZE - 8);
		}

		FUNC0("-- Result from auto-sense is %d\n", temp_result);
		FUNC0("-- code: 0x%x, key: 0x%x, ASC: 0x%x, ASCQ: 0x%x\n",
			  srb->sense_buffer[0],
			  srb->sense_buffer[2] & 0xf,
			  srb->sense_buffer[12], 
			  srb->sense_buffer[13]);
#ifdef CONFIG_USB_STORAGE_DEBUG
		usb_stor_show_sense(
			  srb->sense_buffer[2] & 0xf,
			  srb->sense_buffer[12], 
			  srb->sense_buffer[13]);
#endif

		/* set the result so the higher layers expect this data */
		srb->result = SAM_STAT_CHECK_CONDITION;

		/* We often get empty sense data.  This could indicate that
		 * everything worked or that there was an unspecified
		 * problem.  We have to decide which.
		 */
		if (	/* Filemark 0, ignore EOM, ILI 0, no sense */
				(srb->sense_buffer[2] & 0xaf) == 0 &&
			/* No ASC or ASCQ */
				srb->sense_buffer[12] == 0 &&
				srb->sense_buffer[13] == 0) {

			/* If things are really okay, then let's show that.
			 * Zero out the sense buffer so the higher layers
			 * won't realize we did an unsolicited auto-sense.
			 */
			if (result == USB_STOR_TRANSPORT_GOOD) {
				srb->result = SAM_STAT_GOOD;
				srb->sense_buffer[0] = 0x0;

			/* If there was a problem, report an unspecified
			 * hardware error to prevent the higher layers from
			 * entering an infinite retry loop.
			 */
			} else {
				srb->result = DID_ERROR << 16;
				srb->sense_buffer[2] = HARDWARE_ERROR;
			}
		}
	}

	/* Did we transfer less than the minimum amount required? */
	if ((srb->result == SAM_STAT_GOOD || srb->sense_buffer[2] == 0) &&
			FUNC5(srb) - FUNC8(srb) < srb->underflow)
		srb->result = DID_ERROR << 16;

	FUNC2(us, srb);
	return;

	/* Error and abort processing: try to resynchronize with the device
	 * by issuing a port reset.  If that fails, try a class-specific
	 * device reset. */
  Handle_Errors:

	/* Set the RESETTING bit, and clear the ABORTING bit so that
	 * the reset may proceed. */
	FUNC9(FUNC18(us));
	FUNC12(US_FLIDX_RESETTING, &us->dflags);
	FUNC1(US_FLIDX_ABORTING, &us->dflags);
	FUNC11(FUNC18(us));

	/* We must release the device lock because the pre_reset routine
	 * will want to acquire it. */
	FUNC4(&us->dev_mutex);
	result = FUNC19(us);
	FUNC3(&us->dev_mutex);

	if (result < 0) {
		FUNC9(FUNC18(us));
		FUNC20(us);
		FUNC11(FUNC18(us));
		us->transport_reset(us);
	}
	FUNC1(US_FLIDX_RESETTING, &us->dflags);
	FUNC2(us, srb);
}