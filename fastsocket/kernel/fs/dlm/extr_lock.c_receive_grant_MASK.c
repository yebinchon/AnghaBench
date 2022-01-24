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
struct dlm_rsb {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  h_nodeid; } ;
struct dlm_message {int /*<<< orphan*/  m_remid; TYPE_1__ m_header; } ;
struct dlm_ls {int dummy; } ;
struct dlm_lkb {struct dlm_rsb* lkb_resource; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dlm_lkb*) ; 
 int FUNC1 (struct dlm_ls*,int /*<<< orphan*/ ,struct dlm_lkb**) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_rsb*,struct dlm_lkb*,struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_rsb*) ; 
 scalar_t__ FUNC4 (struct dlm_lkb*) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_ls*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dlm_lkb*,struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC8 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC9 (struct dlm_rsb*,struct dlm_lkb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct dlm_lkb*,struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC11 (struct dlm_rsb*) ; 
 int FUNC12 (struct dlm_lkb*,struct dlm_message*) ; 

__attribute__((used)) static void FUNC13(struct dlm_ls *ls, struct dlm_message *ms)
{
	struct dlm_lkb *lkb;
	struct dlm_rsb *r;
	int error;

	error = FUNC1(ls, ms->m_remid, &lkb);
	if (error) {
		FUNC6(ls, "receive_grant from %d no lkb %x",
			  ms->m_header.h_nodeid, ms->m_remid);
		return;
	}

	r = lkb->lkb_resource;

	FUNC3(r);
	FUNC5(r);

	error = FUNC12(lkb, ms);
	if (error)
		goto out;

	FUNC10(lkb, ms);
	if (FUNC4(lkb))
		FUNC7(lkb, ms);
	FUNC2(r, lkb, ms);
	FUNC9(r, lkb, 0);
 out:
	FUNC11(r);
	FUNC8(r);
	FUNC0(lkb);
}