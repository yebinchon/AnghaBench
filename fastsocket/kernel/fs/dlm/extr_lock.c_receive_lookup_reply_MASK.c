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
struct dlm_rsb {int res_nodeid; scalar_t__ res_first_lkid; } ;
struct dlm_message {int m_nodeid; int /*<<< orphan*/  m_lkid; } ;
struct dlm_ls {int dummy; } ;
struct dlm_lkb {int /*<<< orphan*/  lkb_flags; int /*<<< orphan*/  lkb_id; struct dlm_rsb* lkb_resource; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_MSG_LOOKUP_REPLY ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_rsb*,struct dlm_lkb*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_lkb*) ; 
 int FUNC3 (struct dlm_ls*,int /*<<< orphan*/ ,struct dlm_lkb**) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_rsb*) ; 
 scalar_t__ FUNC5 (struct dlm_lkb*) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC7 (struct dlm_ls*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dlm_ls*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC10 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC11 (struct dlm_rsb*,struct dlm_lkb*) ; 
 int FUNC12 (struct dlm_lkb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct dlm_lkb*) ; 
 int /*<<< orphan*/  FUNC14 (struct dlm_rsb*) ; 

__attribute__((used)) static void FUNC15(struct dlm_ls *ls, struct dlm_message *ms)
{
	struct dlm_lkb *lkb;
	struct dlm_rsb *r;
	int error, ret_nodeid;

	error = FUNC3(ls, ms->m_lkid, &lkb);
	if (error) {
		FUNC8(ls, "receive_lookup_reply no lkb");
		return;
	}

	/* ms->m_result is the value returned by dlm_dir_lookup on dir node
	   FIXME: will a non-zero error ever be returned? */

	r = lkb->lkb_resource;
	FUNC4(r);
	FUNC6(r);

	error = FUNC12(lkb, DLM_MSG_LOOKUP_REPLY);
	if (error)
		goto out;

	ret_nodeid = ms->m_nodeid;
	if (ret_nodeid == FUNC1()) {
		r->res_nodeid = 0;
		ret_nodeid = 0;
		r->res_first_lkid = 0;
	} else {
		/* set_master() will copy res_nodeid to lkb_nodeid */
		r->res_nodeid = ret_nodeid;
	}

	if (FUNC5(lkb)) {
		FUNC7(ls, "receive_lookup_reply %x unlock %x",
			  lkb->lkb_id, lkb->lkb_flags);
		FUNC11(r, lkb);
		FUNC13(lkb); /* undoes create_lkb() */
		goto out_list;
	}

	FUNC0(r, lkb);

 out_list:
	if (!ret_nodeid)
		FUNC9(r);
 out:
	FUNC14(r);
	FUNC10(r);
	FUNC2(lkb);
}