#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct fsg_dev {scalar_t__ cbbuf_cmnd_size; scalar_t__ cmnd_size; int /*<<< orphan*/  lock; int /*<<< orphan*/  cbbuf_cmnd; int /*<<< orphan*/  cmnd; int /*<<< orphan*/  data_dir; int /*<<< orphan*/  intreq; int /*<<< orphan*/  intr_in; scalar_t__ intreq_busy; int /*<<< orphan*/  bulk_out; struct fsg_buffhd* next_buffhd_to_fill; } ;
struct fsg_buffhd {scalar_t__ state; int /*<<< orphan*/  outreq_busy; TYPE_1__* outreq; } ;
struct TYPE_2__ {int short_not_ok; } ;

/* Variables and functions */
 scalar_t__ BUF_STATE_EMPTY ; 
 scalar_t__ BUF_STATE_FULL ; 
 int /*<<< orphan*/  DATA_DIR_UNKNOWN ; 
 int /*<<< orphan*/  USB_BULK_CB_WRAP_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC1 (struct fsg_dev*,struct fsg_buffhd*) ; 
 int /*<<< orphan*/  FUNC2 (struct fsg_dev*,struct fsg_buffhd*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct fsg_dev*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct fsg_dev*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct fsg_dev *fsg)
{
	struct fsg_buffhd	*bh;
	int			rc = 0;

	if (FUNC8()) {

		/* Wait for the next buffer to become available */
		bh = fsg->next_buffhd_to_fill;
		while (bh->state != BUF_STATE_EMPTY) {
			rc = FUNC3(fsg);
			if (rc)
				return rc;
		}

		/* Queue a request to read a Bulk-only CBW */
		FUNC2(fsg, bh, USB_BULK_CB_WRAP_LEN);
		bh->outreq->short_not_ok = 1;
		FUNC7(fsg, fsg->bulk_out, bh->outreq,
				&bh->outreq_busy, &bh->state);

		/* We will drain the buffer in software, which means we
		 * can reuse it for the next filling.  No need to advance
		 * next_buffhd_to_fill. */

		/* Wait for the CBW to arrive */
		while (bh->state != BUF_STATE_FULL) {
			rc = FUNC3(fsg);
			if (rc)
				return rc;
		}
		FUNC4();
		rc = FUNC1(fsg, bh);
		bh->state = BUF_STATE_EMPTY;

	} else {		// USB_PR_CB or USB_PR_CBI

		/* Wait for the next command to arrive */
		while (fsg->cbbuf_cmnd_size == 0) {
			rc = FUNC3(fsg);
			if (rc)
				return rc;
		}

		/* Is the previous status interrupt request still busy?
		 * The host is allowed to skip reading the status,
		 * so we must cancel it. */
		if (fsg->intreq_busy)
			FUNC9(fsg->intr_in, fsg->intreq);

		/* Copy the command and mark the buffer empty */
		fsg->data_dir = DATA_DIR_UNKNOWN;
		FUNC5(&fsg->lock);
		fsg->cmnd_size = fsg->cbbuf_cmnd_size;
		FUNC0(fsg->cmnd, fsg->cbbuf_cmnd, fsg->cmnd_size);
		fsg->cbbuf_cmnd_size = 0;
		FUNC6(&fsg->lock);
	}
	return rc;
}