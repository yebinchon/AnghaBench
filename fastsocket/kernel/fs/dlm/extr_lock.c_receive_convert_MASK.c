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
struct dlm_message {int /*<<< orphan*/  m_remid; } ;
struct dlm_lkb {struct dlm_rsb* lkb_resource; } ;
struct dlm_ls {struct dlm_lkb ls_stub_lkb; struct dlm_rsb ls_stub_rsb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dlm_lkb*) ; 
 int FUNC1 (struct dlm_rsb*,struct dlm_lkb*) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_rsb*,struct dlm_lkb*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_lkb*) ; 
 int FUNC4 (struct dlm_ls*,int /*<<< orphan*/ ,struct dlm_lkb**) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC7 (struct dlm_rsb*) ; 
 int FUNC8 (struct dlm_ls*,struct dlm_lkb*,struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC9 (struct dlm_lkb*,struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC10 (struct dlm_rsb*,struct dlm_lkb*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct dlm_ls*,struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC12 (struct dlm_rsb*) ; 
 int FUNC13 (struct dlm_lkb*,struct dlm_message*) ; 

__attribute__((used)) static void FUNC14(struct dlm_ls *ls, struct dlm_message *ms)
{
	struct dlm_lkb *lkb;
	struct dlm_rsb *r;
	int error, reply = 1;

	error = FUNC4(ls, ms->m_remid, &lkb);
	if (error)
		goto fail;

	r = lkb->lkb_resource;

	FUNC5(r);
	FUNC6(r);

	error = FUNC13(lkb, ms);
	if (error)
		goto out;

	FUNC9(lkb, ms);

	error = FUNC8(ls, lkb, ms);
	if (error) {
		FUNC10(r, lkb, error);
		goto out;
	}

	reply = !FUNC3(lkb);

	error = FUNC1(r, lkb);
	if (reply)
		FUNC10(r, lkb, error);
	FUNC2(r, lkb, error);
 out:
	FUNC12(r);
	FUNC7(r);
	FUNC0(lkb);
	return;

 fail:
	FUNC11(ls, ms);
	FUNC10(&ls->ls_stub_rsb, &ls->ls_stub_lkb, error);
}