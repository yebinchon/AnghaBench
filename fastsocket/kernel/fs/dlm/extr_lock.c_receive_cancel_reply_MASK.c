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
struct TYPE_2__ {int /*<<< orphan*/  h_nodeid; } ;
struct dlm_message {int /*<<< orphan*/  m_remid; TYPE_1__ m_header; } ;
struct dlm_ls {int dummy; } ;
struct dlm_lkb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dlm_lkb*,struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_lkb*) ; 
 int FUNC2 (struct dlm_ls*,int /*<<< orphan*/ ,struct dlm_lkb**) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_ls*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct dlm_ls *ls, struct dlm_message *ms)
{
	struct dlm_lkb *lkb;
	int error;

	error = FUNC2(ls, ms->m_remid, &lkb);
	if (error) {
		FUNC3(ls, "receive_cancel_reply from %d no lkb %x",
			  ms->m_header.h_nodeid, ms->m_remid);
		return;
	}

	FUNC0(lkb, ms);
	FUNC1(lkb);
}