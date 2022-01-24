#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct us_data {scalar_t__ iobuf; TYPE_1__* current_urb; int /*<<< orphan*/  dflags; int /*<<< orphan*/  cr_dma; int /*<<< orphan*/  iobuf_dma; } ;
struct completion {int dummy; } ;
struct TYPE_4__ {int status; scalar_t__ transfer_buffer; int /*<<< orphan*/  setup_dma; int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_flags; scalar_t__ error_count; scalar_t__ actual_length; struct completion* context; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  URB_NO_SETUP_DMA_MAP ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  US_FLIDX_ABORTING ; 
 int /*<<< orphan*/  US_FLIDX_URB_ACTIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct completion*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 long FUNC9 (struct completion*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct us_data *us, int timeout)
{
	struct completion urb_done;
	long timeleft;
	int status;

	/* don't submit URBs during abort processing */
	if (FUNC5(US_FLIDX_ABORTING, &us->dflags))
		return -EIO;

	/* set up data structures for the wakeup system */
	FUNC2(&urb_done);

	/* fill the common fields in the URB */
	us->current_urb->context = &urb_done;
	us->current_urb->actual_length = 0;
	us->current_urb->error_count = 0;
	us->current_urb->status = 0;

	/* we assume that if transfer_buffer isn't us->iobuf then it
	 * hasn't been mapped for DMA.  Yes, this is clunky, but it's
	 * easier than always having the caller tell us whether the
	 * transfer buffer has already been mapped. */
	us->current_urb->transfer_flags = URB_NO_SETUP_DMA_MAP;
	if (us->current_urb->transfer_buffer == us->iobuf)
		us->current_urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
	us->current_urb->transfer_dma = us->iobuf_dma;
	us->current_urb->setup_dma = us->cr_dma;

	/* submit the URB */
	status = FUNC7(us->current_urb, GFP_NOIO);
	if (status) {
		/* something went wrong */
		return status;
	}

	/* since the URB has been submitted successfully, it's now okay
	 * to cancel it */
	FUNC3(US_FLIDX_URB_ACTIVE, &us->dflags);

	/* did an abort occur during the submission? */
	if (FUNC5(US_FLIDX_ABORTING, &us->dflags)) {

		/* cancel the URB, if it hasn't been cancelled already */
		if (FUNC4(US_FLIDX_URB_ACTIVE, &us->dflags)) {
			FUNC0("-- cancelling URB\n");
			FUNC8(us->current_urb);
		}
	}
 
	/* wait for the completion of the URB */
	timeleft = FUNC9(
			&urb_done, timeout ? : MAX_SCHEDULE_TIMEOUT);
 
	FUNC1(US_FLIDX_URB_ACTIVE, &us->dflags);

	if (timeleft <= 0) {
		FUNC0("%s -- cancelling URB\n",
			  timeleft == 0 ? "Timeout" : "Signal");
		FUNC6(us->current_urb);
	}

	/* return the URB status */
	return us->current_urb->status;
}