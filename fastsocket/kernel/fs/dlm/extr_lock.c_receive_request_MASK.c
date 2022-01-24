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
struct dlm_message {int /*<<< orphan*/  m_extra; } ;
struct dlm_lkb {int /*<<< orphan*/  lkb_flags; } ;
struct dlm_ls {struct dlm_lkb ls_stub_lkb; struct dlm_rsb ls_stub_rsb; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_IFL_MSTCPY ; 
 int EINPROGRESS ; 
 int /*<<< orphan*/  R_MASTER ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_ls*,struct dlm_lkb*) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_rsb*,struct dlm_lkb*) ; 
 int FUNC2 (struct dlm_ls*,struct dlm_lkb**) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_lkb*) ; 
 int FUNC4 (struct dlm_rsb*,struct dlm_lkb*) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_rsb*,struct dlm_lkb*,int) ; 
 int FUNC6 (struct dlm_ls*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct dlm_rsb**) ; 
 int /*<<< orphan*/  FUNC7 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC8 (struct dlm_rsb*) ; 
 int FUNC9 (struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC10 (struct dlm_lkb*,struct dlm_message*) ; 
 int FUNC11 (struct dlm_ls*,struct dlm_lkb*,struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC12 (struct dlm_rsb*,struct dlm_lkb*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct dlm_ls*,struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC14 (struct dlm_rsb*) ; 

__attribute__((used)) static void FUNC15(struct dlm_ls *ls, struct dlm_message *ms)
{
	struct dlm_lkb *lkb;
	struct dlm_rsb *r;
	int error, namelen;

	error = FUNC2(ls, &lkb);
	if (error)
		goto fail;

	FUNC10(lkb, ms);
	lkb->lkb_flags |= DLM_IFL_MSTCPY;
	error = FUNC11(ls, lkb, ms);
	if (error) {
		FUNC0(ls, lkb);
		goto fail;
	}

	namelen = FUNC9(ms);

	error = FUNC6(ls, ms->m_extra, namelen, R_MASTER, &r);
	if (error) {
		FUNC0(ls, lkb);
		goto fail;
	}

	FUNC7(r);

	FUNC1(r, lkb);
	error = FUNC4(r, lkb);
	FUNC12(r, lkb, error);
	FUNC5(r, lkb, error);

	FUNC14(r);
	FUNC8(r);

	if (error == -EINPROGRESS)
		error = 0;
	if (error)
		FUNC3(lkb);
	return;

 fail:
	FUNC13(ls, ms);
	FUNC12(&ls->ls_stub_rsb, &ls->ls_stub_lkb, error);
}