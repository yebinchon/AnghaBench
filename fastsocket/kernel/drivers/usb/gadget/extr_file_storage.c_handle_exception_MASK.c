#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct lun {scalar_t__ info_valid; scalar_t__ sense_data_info; int /*<<< orphan*/  unit_attention_data; int /*<<< orphan*/  sense_data; scalar_t__ prevent_medium_removal; } ;
struct fsg_dev {scalar_t__ state; int intreq_busy; unsigned int exception_req_tag; int nluns; unsigned int ep0_req_tag; int /*<<< orphan*/  lock; int /*<<< orphan*/  ep0; int /*<<< orphan*/  bulk_in; int /*<<< orphan*/  atomic_bitflags; struct lun* luns; int /*<<< orphan*/  new_config; struct fsg_buffhd* buffhds; struct fsg_buffhd* next_buffhd_to_drain; struct fsg_buffhd* next_buffhd_to_fill; int /*<<< orphan*/  intr_in; scalar_t__ intr_in_enabled; int /*<<< orphan*/  bulk_out; scalar_t__ bulk_out_enabled; scalar_t__ bulk_in_enabled; int /*<<< orphan*/  intreq; } ;
struct fsg_buffhd {int /*<<< orphan*/  state; scalar_t__ outreq_busy; scalar_t__ inreq_busy; int /*<<< orphan*/  outreq; int /*<<< orphan*/  inreq; } ;
typedef  int /*<<< orphan*/  siginfo_t ;
typedef  enum fsg_state { ____Placeholder_fsg_state } fsg_state ;
struct TYPE_3__ {int /*<<< orphan*/  blocked; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUF_STATE_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (struct fsg_dev*,char*) ; 
#define  FSG_STATE_ABORT_BULK_OUT 134 
#define  FSG_STATE_CONFIG_CHANGE 133 
#define  FSG_STATE_DISCONNECT 132 
#define  FSG_STATE_EXIT 131 
 void* FSG_STATE_IDLE ; 
#define  FSG_STATE_INTERFACE_CHANGE 130 
#define  FSG_STATE_RESET 129 
 scalar_t__ FSG_STATE_STATUS_PHASE ; 
#define  FSG_STATE_TERMINATED 128 
 int /*<<< orphan*/  IGNORE_BULK_OUT ; 
 int NUM_BUFFERS ; 
 int SIGUSR1 ; 
 int /*<<< orphan*/  SS_NO_SENSE ; 
 TYPE_1__* current ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct fsg_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct fsg_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fsg_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct fsg_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fsg_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct fsg_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct fsg_dev*) ; 
 scalar_t__ FUNC9 (struct fsg_dev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18(struct fsg_dev *fsg)
{
	siginfo_t		info;
	int			sig;
	int			i;
	int			num_active;
	struct fsg_buffhd	*bh;
	enum fsg_state		old_state;
	u8			new_config;
	struct lun		*curlun;
	unsigned int		exception_req_tag;
	int			rc;

	/* Clear the existing signals.  Anything but SIGUSR1 is converted
	 * into a high-priority EXIT exception. */
	for (;;) {
		sig = FUNC1(current, &current->blocked, &info);
		if (!sig)
			break;
		if (sig != SIGUSR1) {
			if (fsg->state < FSG_STATE_EXIT)
				FUNC0(fsg, "Main thread exiting on signal\n");
			FUNC7(fsg, FSG_STATE_EXIT);
		}
	}

	/* Cancel all the pending transfers */
	if (fsg->intreq_busy)
		FUNC16(fsg->intr_in, fsg->intreq);
	for (i = 0; i < NUM_BUFFERS; ++i) {
		bh = &fsg->buffhds[i];
		if (bh->inreq_busy)
			FUNC16(fsg->bulk_in, bh->inreq);
		if (bh->outreq_busy)
			FUNC16(fsg->bulk_out, bh->outreq);
	}

	/* Wait until everything is idle */
	for (;;) {
		num_active = fsg->intreq_busy;
		for (i = 0; i < NUM_BUFFERS; ++i) {
			bh = &fsg->buffhds[i];
			num_active += bh->inreq_busy + bh->outreq_busy;
		}
		if (num_active == 0)
			break;
		if (FUNC9(fsg))
			return;
	}

	/* Clear out the controller's fifos */
	if (fsg->bulk_in_enabled)
		FUNC17(fsg->bulk_in);
	if (fsg->bulk_out_enabled)
		FUNC17(fsg->bulk_out);
	if (fsg->intr_in_enabled)
		FUNC17(fsg->intr_in);

	/* Reset the I/O buffer states and pointers, the SCSI
	 * state, and the exception.  Then invoke the handler. */
	FUNC10(&fsg->lock);

	for (i = 0; i < NUM_BUFFERS; ++i) {
		bh = &fsg->buffhds[i];
		bh->state = BUF_STATE_EMPTY;
	}
	fsg->next_buffhd_to_fill = fsg->next_buffhd_to_drain =
			&fsg->buffhds[0];

	exception_req_tag = fsg->exception_req_tag;
	new_config = fsg->new_config;
	old_state = fsg->state;

	if (old_state == FSG_STATE_ABORT_BULK_OUT)
		fsg->state = FSG_STATE_STATUS_PHASE;
	else {
		for (i = 0; i < fsg->nluns; ++i) {
			curlun = &fsg->luns[i];
			curlun->prevent_medium_removal = 0;
			curlun->sense_data = curlun->unit_attention_data =
					SS_NO_SENSE;
			curlun->sense_data_info = 0;
			curlun->info_valid = 0;
		}
		fsg->state = FSG_STATE_IDLE;
	}
	FUNC11(&fsg->lock);

	/* Carry out any extra actions required for the exception */
	switch (old_state) {
	default:
		break;

	case FSG_STATE_ABORT_BULK_OUT:
		FUNC8(fsg);
		FUNC10(&fsg->lock);
		if (fsg->state == FSG_STATE_STATUS_PHASE)
			fsg->state = FSG_STATE_IDLE;
		FUNC11(&fsg->lock);
		break;

	case FSG_STATE_RESET:
		/* In case we were forced against our will to halt a
		 * bulk endpoint, clear the halt now.  (The SuperH UDC
		 * requires this.) */
		if (FUNC12(IGNORE_BULK_OUT, &fsg->atomic_bitflags))
			FUNC15(fsg->bulk_in);

		if (FUNC13()) {
			if (fsg->ep0_req_tag == exception_req_tag)
				FUNC4(fsg);	// Complete the status stage

		} else if (FUNC14())
			FUNC8(fsg);	// Status by interrupt pipe

		/* Technically this should go here, but it would only be
		 * a waste of time.  Ditto for the INTERFACE_CHANGE and
		 * CONFIG_CHANGE cases. */
		// for (i = 0; i < fsg->nluns; ++i)
		//	fsg->luns[i].unit_attention_data = SS_RESET_OCCURRED;
		break;

	case FSG_STATE_INTERFACE_CHANGE:
		rc = FUNC3(fsg, 0);
		if (fsg->ep0_req_tag != exception_req_tag)
			break;
		if (rc != 0)			// STALL on errors
			FUNC5(fsg, fsg->ep0);
		else				// Complete the status stage
			FUNC4(fsg);
		break;

	case FSG_STATE_CONFIG_CHANGE:
		rc = FUNC2(fsg, new_config);
		if (fsg->ep0_req_tag != exception_req_tag)
			break;
		if (rc != 0)			// STALL on errors
			FUNC5(fsg, fsg->ep0);
		else				// Complete the status stage
			FUNC4(fsg);
		break;

	case FSG_STATE_DISCONNECT:
		FUNC6(fsg);
		FUNC2(fsg, 0);		// Unconfigured state
		break;

	case FSG_STATE_EXIT:
	case FSG_STATE_TERMINATED:
		FUNC2(fsg, 0);			// Free resources
		FUNC10(&fsg->lock);
		fsg->state = FSG_STATE_TERMINATED;	// Stop the thread
		FUNC11(&fsg->lock);
		break;
	}
}