#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct us_data {int fflags; scalar_t__ max_lun; int /*<<< orphan*/  dev_mutex; TYPE_2__* srb; int /*<<< orphan*/  dflags; int /*<<< orphan*/  notify; int /*<<< orphan*/  (* proto_handler ) (TYPE_2__*,struct us_data*) ;int /*<<< orphan*/  cmnd_ready; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_6__ {int result; scalar_t__ sc_data_direction; scalar_t__* cmnd; int /*<<< orphan*/  (* scsi_done ) (TYPE_2__*) ;TYPE_1__* device; } ;
struct TYPE_5__ {scalar_t__ lun; scalar_t__ id; } ;

/* Variables and functions */
 int DID_ABORT ; 
 int DID_BAD_TARGET ; 
 int DID_ERROR ; 
 scalar_t__ DMA_BIDIRECTIONAL ; 
 scalar_t__ INQUIRY ; 
 int SAM_STAT_GOOD ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  US_FLIDX_ABORTING ; 
 int /*<<< orphan*/  US_FLIDX_TIMED_OUT ; 
 int US_FL_FIX_INQUIRY ; 
 int US_FL_SCM_MULT_TARG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct us_data*,unsigned char*,int) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC11 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,struct us_data*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct Scsi_Host* FUNC16 (struct us_data*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(void * __us)
{
	struct us_data *us = (struct us_data *)__us;
	struct Scsi_Host *host = FUNC16(us);

	for(;;) {
		FUNC1("*** thread sleeping.\n");
		if (FUNC18(&us->cmnd_ready))
			break;

		FUNC1("*** thread awakened.\n");

		/* lock the device pointers */
		FUNC7(&(us->dev_mutex));

		/* lock access to the state */
		FUNC10(host);

		/* When we are called with no command pending, we're done */
		if (us->srb == NULL) {
			FUNC11(host);
			FUNC8(&us->dev_mutex);
			FUNC1("-- exiting\n");
			break;
		}

		/* has the command timed out *already* ? */
		if (FUNC15(US_FLIDX_TIMED_OUT, &us->dflags)) {
			us->srb->result = DID_ABORT << 16;
			goto SkipForAbort;
		}

		FUNC11(host);

		/* reject the command if the direction indicator 
		 * is UNKNOWN
		 */
		if (us->srb->sc_data_direction == DMA_BIDIRECTIONAL) {
			FUNC1("UNKNOWN data direction\n");
			us->srb->result = DID_ERROR << 16;
		}

		/* reject if target != 0 or if LUN is higher than
		 * the maximum known LUN
		 */
		else if (us->srb->device->id && 
				!(us->fflags & US_FL_SCM_MULT_TARG)) {
			FUNC1("Bad target number (%d:%d)\n",
				  us->srb->device->id, us->srb->device->lun);
			us->srb->result = DID_BAD_TARGET << 16;
		}

		else if (us->srb->device->lun > us->max_lun) {
			FUNC1("Bad LUN (%d:%d)\n",
				  us->srb->device->id, us->srb->device->lun);
			us->srb->result = DID_BAD_TARGET << 16;
		}

		/* Handle those devices which need us to fake 
		 * their inquiry data */
		else if ((us->srb->cmnd[0] == INQUIRY) &&
			    (us->fflags & US_FL_FIX_INQUIRY)) {
			unsigned char data_ptr[36] = {
			    0x00, 0x80, 0x02, 0x02,
			    0x1F, 0x00, 0x00, 0x00};

			FUNC1("Faking INQUIRY command\n");
			FUNC5(us, data_ptr, 36);
			us->srb->result = SAM_STAT_GOOD;
		}

		/* we've got a command, let's do it! */
		else {
			FUNC0(FUNC17(us->srb));
			us->proto_handler(us->srb, us);
		}

		/* lock access to the state */
		FUNC10(host);

		/* indicate that the command is done */
		if (us->srb->result != DID_ABORT << 16) {
			FUNC1("scsi cmd done, result=0x%x\n", 
				   us->srb->result);
			us->srb->scsi_done(us->srb);
		} else {
SkipForAbort:
			FUNC1("scsi command aborted\n");
		}

		/* If an abort request was received we need to signal that
		 * the abort has finished.  The proper test for this is
		 * the TIMED_OUT flag, not srb->result == DID_ABORT, because
		 * the timeout might have occurred after the command had
		 * already completed with a different result code. */
		if (FUNC15(US_FLIDX_TIMED_OUT, &us->dflags)) {
			FUNC4(&(us->notify));

			/* Allow USB transfers to resume */
			FUNC3(US_FLIDX_ABORTING, &us->dflags);
			FUNC3(US_FLIDX_TIMED_OUT, &us->dflags);
		}

		/* finished working on this command */
		us->srb = NULL;
		FUNC11(host);

		/* unlock the device pointers */
		FUNC8(&us->dev_mutex);
	} /* for (;;) */

	/* Wait until we are told to stop */
	for (;;) {
		FUNC12(TASK_INTERRUPTIBLE);
		if (FUNC6())
			break;
		FUNC9();
	}
	FUNC2(TASK_RUNNING);
	return 0;
}