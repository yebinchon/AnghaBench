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
struct seq_file {int dummy; } ;
struct dlm_rsb {scalar_t__ res_nodeid; } ;
struct dlm_lkb {scalar_t__ lkb_status; scalar_t__ lkb_nodeid; scalar_t__ lkb_wait_type; int /*<<< orphan*/  lkb_remid; int /*<<< orphan*/  lkb_rqmode; int /*<<< orphan*/  lkb_grmode; int /*<<< orphan*/  lkb_id; } ;

/* Variables and functions */
 scalar_t__ DLM_LKSTS_CONVERT ; 
 scalar_t__ DLM_LKSTS_WAITING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct seq_file*,char*,...) ; 

__attribute__((used)) static int FUNC2(struct seq_file *s, struct dlm_lkb *lkb,
			      struct dlm_rsb *res)
{
	FUNC1(s, "%08x %s", lkb->lkb_id, FUNC0(lkb->lkb_grmode));

	if (lkb->lkb_status == DLM_LKSTS_CONVERT ||
	    lkb->lkb_status == DLM_LKSTS_WAITING)
		FUNC1(s, " (%s)", FUNC0(lkb->lkb_rqmode));

	if (lkb->lkb_nodeid) {
		if (lkb->lkb_nodeid != res->res_nodeid)
			FUNC1(s, " Remote: %3d %08x", lkb->lkb_nodeid,
				   lkb->lkb_remid);
		else
			FUNC1(s, " Master:     %08x", lkb->lkb_remid);
	}

	if (lkb->lkb_wait_type)
		FUNC1(s, " wait_type: %d", lkb->lkb_wait_type);

	return FUNC1(s, "\n");
}