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
typedef  int /*<<< orphan*/  uint32_t ;
struct dlm_user_args {int dummy; } ;
struct dlm_rsb {int dummy; } ;
struct dlm_ls {int dummy; } ;
struct dlm_lkb {int /*<<< orphan*/  lkb_flags; struct dlm_rsb* lkb_resource; struct dlm_user_args* lkb_ua; } ;
struct dlm_args {int dummy; } ;

/* Variables and functions */
 int DLM_ECANCEL ; 
 int /*<<< orphan*/  DLM_IFL_DEADLOCK_CANCEL ; 
 int EBUSY ; 
 int FUNC0 (struct dlm_rsb*,struct dlm_lkb*) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_lkb*) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_ls*) ; 
 int FUNC4 (struct dlm_ls*,int /*<<< orphan*/ ,struct dlm_lkb**) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC7 (struct dlm_rsb*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct dlm_user_args*,struct dlm_args*) ; 
 int /*<<< orphan*/  FUNC9 (struct dlm_rsb*) ; 
 int FUNC10 (struct dlm_lkb*,struct dlm_args*) ; 

int FUNC11(struct dlm_ls *ls, uint32_t flags, uint32_t lkid)
{
	struct dlm_lkb *lkb;
	struct dlm_args args;
	struct dlm_user_args *ua;
	struct dlm_rsb *r;
	int error;

	FUNC1(ls);

	error = FUNC4(ls, lkid, &lkb);
	if (error)
		goto out;

	ua = lkb->lkb_ua;

	error = FUNC8(flags, ua, &args);
	if (error)
		goto out_put;

	/* same as cancel_lock(), but set DEADLOCK_CANCEL after lock_rsb */

	r = lkb->lkb_resource;
	FUNC5(r);
	FUNC6(r);

	error = FUNC10(lkb, &args);
	if (error)
		goto out_r;
	lkb->lkb_flags |= DLM_IFL_DEADLOCK_CANCEL;

	error = FUNC0(r, lkb);
 out_r:
	FUNC9(r);
	FUNC7(r);

	if (error == -DLM_ECANCEL)
		error = 0;
	/* from validate_unlock_args() */
	if (error == -EBUSY)
		error = 0;
 out_put:
	FUNC2(lkb);
 out:
	FUNC3(ls);
	return error;
}