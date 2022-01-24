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
struct dlm_lkb {int lkb_status; void* lkb_grmode; void* lkb_rqmode; } ;

/* Variables and functions */
#define  DLM_LKSTS_CONVERT 130 
#define  DLM_LKSTS_GRANTED 129 
#define  DLM_LKSTS_WAITING 128 
 void* DLM_LOCK_IV ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_rsb*,struct dlm_lkb*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_rsb*,struct dlm_lkb*,int const) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_lkb*) ; 

__attribute__((used)) static int FUNC4(struct dlm_rsb *r, struct dlm_lkb *lkb)
{
	int rv = 0;

	lkb->lkb_rqmode = DLM_LOCK_IV;

	switch (lkb->lkb_status) {
	case DLM_LKSTS_GRANTED:
		break;
	case DLM_LKSTS_CONVERT:
		FUNC2(r, lkb, DLM_LKSTS_GRANTED);
		rv = 1;
		break;
	case DLM_LKSTS_WAITING:
		FUNC0(r, lkb);
		lkb->lkb_grmode = DLM_LOCK_IV;
		/* this unhold undoes the original ref from create_lkb()
		   so this leads to the lkb being freed */
		FUNC3(lkb);
		rv = -1;
		break;
	default:
		FUNC1("invalid status for revert %d", lkb->lkb_status);
	}
	return rv;
}