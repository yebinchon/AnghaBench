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
struct nilfs_segctor_req {scalar_t__ mode; int /*<<< orphan*/  sb_err; scalar_t__ sc_err; int /*<<< orphan*/  seq_accepted; } ;
struct nilfs_sc_info {int sc_state; int /*<<< orphan*/  sc_state_lock; TYPE_1__* sc_timer; int /*<<< orphan*/  sc_flush_request; int /*<<< orphan*/  sc_seq_done; } ;
struct TYPE_2__ {int /*<<< orphan*/  expires; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLUSH_DAT_BIT ; 
 int /*<<< orphan*/  FLUSH_FILE_BIT ; 
 int NILFS_SEGCTOR_COMMIT ; 
 scalar_t__ SC_FLUSH_DAT ; 
 scalar_t__ SC_FLUSH_FILE ; 
 scalar_t__ SC_LSEG_SR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct nilfs_sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct nilfs_sc_info *sci,
				 struct nilfs_segctor_req *req)
{
	/* Clear requests (even when the construction failed) */
	FUNC2(&sci->sc_state_lock);

	if (req->mode == SC_LSEG_SR) {
		sci->sc_state &= ~NILFS_SEGCTOR_COMMIT;
		sci->sc_seq_done = req->seq_accepted;
		FUNC1(sci, req->sc_err ? : req->sb_err);
		sci->sc_flush_request = 0;
	} else {
		if (req->mode == SC_FLUSH_FILE)
			sci->sc_flush_request &= ~FLUSH_FILE_BIT;
		else if (req->mode == SC_FLUSH_DAT)
			sci->sc_flush_request &= ~FLUSH_DAT_BIT;

		/* re-enable timer if checkpoint creation was not done */
		if (sci->sc_timer && (sci->sc_state & NILFS_SEGCTOR_COMMIT) &&
		    FUNC4(jiffies, sci->sc_timer->expires))
			FUNC0(sci->sc_timer);
	}
	FUNC3(&sci->sc_state_lock);
}