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
struct rcom_lock {void* rl_result; int /*<<< orphan*/  rl_lkid; void* rl_remid; int /*<<< orphan*/  rl_status; int /*<<< orphan*/  rl_namelen; int /*<<< orphan*/  rl_name; scalar_t__ rl_parent_lkid; } ;
struct dlm_rsb {int /*<<< orphan*/  res_convertqueue; int /*<<< orphan*/  res_waitqueue; } ;
struct TYPE_2__ {int /*<<< orphan*/  h_nodeid; } ;
struct dlm_rcom {TYPE_1__ rc_header; scalar_t__ rc_buf; } ;
struct dlm_ls {int dummy; } ;
struct dlm_lkb {int lkb_id; } ;

/* Variables and functions */
 int EEXIST ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  RSB_RECOVER_GRANT ; 
 int /*<<< orphan*/  R_MASTER ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_ls*,struct dlm_lkb*) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_rsb*,struct dlm_lkb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_rsb*,struct dlm_lkb*) ; 
 void* FUNC3 (int) ; 
 int FUNC4 (struct dlm_ls*,struct dlm_lkb**) ; 
 int FUNC5 (struct dlm_ls*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dlm_rsb**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC10 (struct dlm_ls*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct dlm_rsb*) ; 
 int FUNC12 (struct dlm_ls*,struct dlm_lkb*,struct dlm_rsb*,struct dlm_rcom*) ; 
 int /*<<< orphan*/  FUNC13 (struct dlm_rsb*,int /*<<< orphan*/ ) ; 
 struct dlm_lkb* FUNC14 (struct dlm_rsb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct dlm_rsb*) ; 

int FUNC16(struct dlm_ls *ls, struct dlm_rcom *rc)
{
	struct rcom_lock *rl = (struct rcom_lock *) rc->rc_buf;
	struct dlm_rsb *r;
	struct dlm_lkb *lkb;
	int error;

	if (rl->rl_parent_lkid) {
		error = -EOPNOTSUPP;
		goto out;
	}

	error = FUNC5(ls, rl->rl_name, FUNC6(rl->rl_namelen),
			 R_MASTER, &r);
	if (error)
		goto out;

	FUNC9(r);

	lkb = FUNC14(r, rc->rc_header.h_nodeid, FUNC7(rl->rl_lkid));
	if (lkb) {
		error = -EEXIST;
		goto out_remid;
	}

	error = FUNC4(ls, &lkb);
	if (error)
		goto out_unlock;

	error = FUNC12(ls, lkb, r, rc);
	if (error) {
		FUNC0(ls, lkb);
		goto out_unlock;
	}

	FUNC2(r, lkb);
	FUNC1(r, lkb, rl->rl_status);
	error = 0;

	if (!FUNC8(&r->res_waitqueue) || !FUNC8(&r->res_convertqueue))
		FUNC13(r, RSB_RECOVER_GRANT);

 out_remid:
	/* this is the new value returned to the lock holder for
	   saving in its process-copy lkb */
	rl->rl_remid = FUNC3(lkb->lkb_id);

 out_unlock:
	FUNC15(r);
	FUNC11(r);
 out:
	if (error)
		FUNC10(ls, "recover_master_copy %d %x", error,
			  FUNC7(rl->rl_lkid));
	rl->rl_result = FUNC3(error);
	return error;
}