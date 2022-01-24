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
struct dlm_rsb {int dummy; } ;
struct dlm_lkb {scalar_t__ lkb_rqmode; scalar_t__ lkb_grmode; int lkb_exflags; int /*<<< orphan*/  lkb_sbflags; int /*<<< orphan*/  lkb_id; } ;
typedef  scalar_t__ int8_t ;

/* Variables and functions */
 int DLM_LKF_ALTCW ; 
 int DLM_LKF_ALTPR ; 
 int DLM_LKF_CONVDEADLK ; 
 int DLM_LKF_NODLCKWT ; 
 scalar_t__ DLM_LOCK_CW ; 
 scalar_t__ DLM_LOCK_IV ; 
 scalar_t__ DLM_LOCK_NL ; 
 scalar_t__ DLM_LOCK_PR ; 
 int /*<<< orphan*/  DLM_SBF_ALTMODE ; 
 int /*<<< orphan*/  DLM_SBF_DEMOTED ; 
 int EDEADLK ; 
 int FUNC0 (struct dlm_rsb*,struct dlm_lkb*,int,int) ; 
 scalar_t__ FUNC1 (struct dlm_lkb*) ; 
 scalar_t__ FUNC2 (struct dlm_rsb*,struct dlm_lkb*) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct dlm_rsb *r, struct dlm_lkb *lkb, int now,
			  int recover, int *err)
{
	int rv;
	int8_t alt = 0, rqmode = lkb->lkb_rqmode;
	int8_t is_convert = (lkb->lkb_grmode != DLM_LOCK_IV);

	if (err)
		*err = 0;

	rv = FUNC0(r, lkb, now, recover);
	if (rv)
		goto out;

	/*
	 * The CONVDEADLK flag is non-standard and tells the dlm to resolve
	 * conversion deadlocks by demoting grmode to NL, otherwise the dlm
	 * cancels one of the locks.
	 */

	if (is_convert && FUNC1(lkb) &&
	    FUNC2(r, lkb)) {
		if (lkb->lkb_exflags & DLM_LKF_CONVDEADLK) {
			lkb->lkb_grmode = DLM_LOCK_NL;
			lkb->lkb_sbflags |= DLM_SBF_DEMOTED;
		} else if (!(lkb->lkb_exflags & DLM_LKF_NODLCKWT)) {
			if (err)
				*err = -EDEADLK;
			else {
				FUNC4("can_be_granted deadlock %x now %d",
					  lkb->lkb_id, now);
				FUNC3(r);
			}
		}
		goto out;
	}

	/*
	 * The ALTPR and ALTCW flags are non-standard and tell the dlm to try
	 * to grant a request in a mode other than the normal rqmode.  It's a
	 * simple way to provide a big optimization to applications that can
	 * use them.
	 */

	if (rqmode != DLM_LOCK_PR && (lkb->lkb_exflags & DLM_LKF_ALTPR))
		alt = DLM_LOCK_PR;
	else if (rqmode != DLM_LOCK_CW && (lkb->lkb_exflags & DLM_LKF_ALTCW))
		alt = DLM_LOCK_CW;

	if (alt) {
		lkb->lkb_rqmode = alt;
		rv = FUNC0(r, lkb, now, 0);
		if (rv)
			lkb->lkb_sbflags |= DLM_SBF_ALTMODE;
		else
			lkb->lkb_rqmode = rqmode;
	}
 out:
	return rv;
}