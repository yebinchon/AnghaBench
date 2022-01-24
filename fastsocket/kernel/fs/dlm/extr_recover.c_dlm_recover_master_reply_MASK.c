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
struct dlm_rcom {int rc_result; scalar_t__ rc_id; } ;
struct dlm_ls {int /*<<< orphan*/  ls_wait_general; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_ls*,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_rsb*) ; 
 scalar_t__ FUNC3 (struct dlm_ls*) ; 
 struct dlm_rsb* FUNC4 (struct dlm_ls*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_rsb*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct dlm_ls *ls, struct dlm_rcom *rc)
{
	struct dlm_rsb *r;
	int nodeid;

	r = FUNC4(ls, rc->rc_id);
	if (!r) {
		FUNC1(ls, "dlm_recover_master_reply no id %llx",
			  (unsigned long long)rc->rc_id);
		goto out;
	}

	nodeid = rc->rc_result;
	if (nodeid == FUNC0())
		nodeid = 0;

	FUNC5(r, nodeid);
	FUNC2(r);

	if (FUNC3(ls))
		FUNC6(&ls->ls_wait_general);
 out:
	return 0;
}